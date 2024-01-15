// video 11

const std = @import("std");

const Result = union(enum) { int: i32, string: []const u8, float: f32 };

fn calculate(input: u8) Result {
    return switch (input) {
        0 => Result{ .int = 30 },
        1 => Result{ .string = "Hello" },
        2 => Result{ .float = 3.14 },
        else => Result{ .string = "Something else" },
    };
}

pub fn main() void {
    const result = calculate(0);
    std.log.info("{any}", .{result});
}
