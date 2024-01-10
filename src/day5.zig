// video 4

const std = @import("std");

fn add(x: i32, y: i32) i32 {
    var result = x + y;
    return result;
}

fn println(x: []const u8) void {
    std.debug.print("{s}\n", .{x});
}

pub fn main() void {
    std.debug.print("{}\n", .{add(5, 4)});
    println("Hello world!");
}
