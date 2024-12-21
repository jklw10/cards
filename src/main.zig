//! By convention, main.zig is where your main function lives in the case that
//! you are building an executable. If you are making a library, the convention
//! is to delete this file and start with root.zig instead.
const std = @import("std");
const sdl = @cImport(@cInclude("SDL3/SDL.h"));

pub fn main() !void {
    _ = sdl.SDL_Init(sdl.SDL_INIT_VIDEO);
    defer _ = sdl.SDL_QuitSubSystem(sdl.SDL_INIT_VIDEO);
    defer _ = sdl.SDL_Quit();
    const w = sdl.SDL_CreateWindow("asd", 100, 100, 0);
    const s = sdl.SDL_GetWindowSurface(w);
    const r = sdl.SDL_FillSurfaceRect(s, null, 0xff0000ff);
    _ = r;
    _ = sdl.SDL_UpdateWindowSurface(w);
    sdl.SDL_Delay(5000);
}
