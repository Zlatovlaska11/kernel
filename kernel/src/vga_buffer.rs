use core::fmt;
use lazy_static::lazy_static;
use spin::Mutex;
use x86_64::instructions::interrupts;
use bootloader_api::info::PixelFormat;

const FONT_W: usize = 8;
const FONT_H: usize = 8;

// Kept for backward compatibility with callers that pass Color values.
#[allow(dead_code)]
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
#[repr(u8)]
pub enum Color {
    Black = 0,
    Blue = 1,
    Green = 2,
    Cyan = 3,
    Red = 4,
    Magenta = 5,
    Brown = 6,
    LightGray = 7,
    DarkGray = 8,
    LightBlue = 9,
    LightGreen = 10,
    LightCyan = 11,
    LightRed = 12,
    Pink = 13,
    Yellow = 14,
    White = 15,
}

struct FbInfo {
    width: usize,
    height: usize,
    stride: usize,
    bpp: usize,
    bgr: bool,
}

pub struct Writer {
    buf: Option<&'static mut [u8]>,
    info: Option<FbInfo>,
    x: usize,
    y: usize,
    fg: (u8, u8, u8),
}

impl Writer {
    const fn new() -> Self {
        Writer {
            buf: None,
            info: None,
            x: 0,
            y: 0,
            fg: (200, 200, 200),
        }
    }

    /// Called once from kernel_main before any printing.
    pub fn set_framebuffer(
        &mut self,
        buffer: &'static mut [u8],
        width: usize,
        height: usize,
        stride: usize,
        bpp: usize,
        pixel_format: PixelFormat,
    ) {
        let bgr = matches!(pixel_format, PixelFormat::Bgr);
        self.info = Some(FbInfo { width, height, stride, bpp, bgr });
        self.buf = Some(buffer);
    }

    fn put_pixel(&mut self, px: usize, py: usize, r: u8, g: u8, b: u8) {
        let (buf, info) = match (&mut self.buf, &self.info) {
            (Some(b), Some(i)) => (b, i),
            _ => return,
        };
        if px >= info.width || py >= info.height {
            return;
        }
        let off = py * info.stride * info.bpp + px * info.bpp;
        if off + 2 >= buf.len() {
            return;
        }
        if info.bgr {
            buf[off] = b;
            buf[off + 1] = g;
            buf[off + 2] = r;
        } else {
            buf[off] = r;
            buf[off + 1] = g;
            buf[off + 2] = b;
        }
    }

    fn draw_glyph(&mut self, c: char) {
        let idx = c as usize;
        let glyph = if idx < 128 {
            font8x8::legacy::BASIC_LEGACY[idx]
        } else {
            [0u8; 8]
        };
        let (r, g, b) = self.fg;
        let (cx, cy) = (self.x, self.y);
        for row in 0..FONT_H {
            let bits = glyph[row];
            for col in 0..FONT_W {
                if (bits >> col) & 1 != 0 {
                    self.put_pixel(cx + col, cy + row, r, g, b);
                }
            }
        }
    }

    fn scroll_up(&mut self) {
        let (buf, info) = match (&mut self.buf, &self.info) {
            (Some(b), Some(i)) => (b, i),
            _ => return,
        };
        let row_bytes = FONT_H * info.stride * info.bpp;
        let total = info.height * info.stride * info.bpp;
        let len = buf.len().min(total);
        if row_bytes < len {
            buf.copy_within(row_bytes..len, 0);
            let clear_start = len - row_bytes;
            buf[clear_start..len].fill(0);
        }
    }

    fn advance(&mut self) {
        let width = self.info.as_ref().map(|i| i.width).unwrap_or(0);
        let height = self.info.as_ref().map(|i| i.height).unwrap_or(0);
        self.x += FONT_W;
        if self.x + FONT_W > width {
            self.x = 0;
            self.y += FONT_H;
        }
        if self.y + FONT_H > height {
            self.scroll_up();
            self.y -= FONT_H;
        }
    }

    pub fn write_byte(&mut self, byte: u8) {
        match byte {
            0x0E => self.backspace(),
            b'\n' => {
                self.x = 0;
                self.y += FONT_H;
                let height = self.info.as_ref().map(|i| i.height).unwrap_or(0);
                if self.y + FONT_H > height {
                    self.scroll_up();
                    self.y -= FONT_H;
                }
            }
            byte => {
                let c = byte as char;
                self.draw_glyph(c);
                self.advance();
            }
        }
    }

    fn backspace(&mut self) {
        if self.x >= FONT_W {
            self.x -= FONT_W;
            let (cx, cy) = (self.x, self.y);
            for row in 0..FONT_H {
                for col in 0..FONT_W {
                    self.put_pixel(cx + col, cy + row, 0, 0, 0);
                }
            }
        }
    }

    pub fn write_string(&mut self, s: &str) {
        for byte in s.bytes() {
            match byte {
                0x20..=0x7e | b'\n' => self.write_byte(byte),
                0x0E => self.write_byte(0x0E),
                _ => self.write_byte(0xfe),
            }
        }
    }

    pub fn clear_screen(&mut self) {
        if let Some(buf) = &mut self.buf {
            buf.fill(0);
        }
        self.x = 0;
        self.y = 0;
    }

    pub fn change_color(&mut self, color: Color) {
        self.fg = match color {
            Color::Black => (0, 0, 0),
            Color::Blue => (0, 0, 170),
            Color::Green => (0, 170, 0),
            Color::Cyan => (0, 170, 170),
            Color::Red => (170, 0, 0),
            Color::Magenta => (170, 0, 170),
            Color::Brown => (170, 85, 0),
            Color::LightGray => (170, 170, 170),
            Color::DarkGray => (85, 85, 85),
            Color::LightBlue => (85, 85, 255),
            Color::LightGreen => (85, 255, 85),
            Color::LightCyan => (85, 255, 255),
            Color::LightRed => (255, 85, 85),
            Color::Pink => (255, 85, 255),
            Color::Yellow => (255, 255, 85),
            Color::White => (255, 255, 255),
        };
    }

    pub fn get_debug_info(&mut self) -> usize {
        self.x / FONT_W
    }
}

impl fmt::Write for Writer {
    fn write_str(&mut self, s: &str) -> fmt::Result {
        self.write_string(s);
        Ok(())
    }
}

lazy_static! {
    pub static ref WRITER: Mutex<Writer> = Mutex::new(Writer::new());
}

/// Called once from kernel_main before any printing.
pub fn init(
    buffer: &'static mut [u8],
    width: usize,
    height: usize,
    stride: usize,
    bpp: usize,
    pixel_format: PixelFormat,
) {
    WRITER.lock().set_framebuffer(buffer, width, height, stride, bpp, pixel_format);
}

#[macro_export]
macro_rules! print {
    ($($arg:tt)*) => ($crate::vga_buffer::_print(format_args!($($arg)*)));
}

#[macro_export]
macro_rules! println {
    () => ($crate::print!("\n"));
    ($($arg:tt)*) => ($crate::print!("{}\n", format_args!($($arg)*)));
}

#[doc(hidden)]
pub fn _print(args: fmt::Arguments) {
    use core::fmt::Write;
    interrupts::without_interrupts(|| {
        WRITER.lock().write_fmt(args).unwrap();
    })
}
