// video 3
// left off at 15:12

const std = @import("std");

pub fn main() void {
    const age: u32 = 30;

    std.debug.print("{}, Size of age: {} bytes\n", .{ age, @sizeOf(@TypeOf(age)) });
}
