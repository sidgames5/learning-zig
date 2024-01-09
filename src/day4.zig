// video 3

const std = @import("std");

pub fn main() void {
    const age: u8 = 30;

    std.debug.print("{}, Size of age: {} bytes\n", .{ age, @sizeOf(@TypeOf(age)) });

    var isOld: bool = false;
    _ = isOld;

    var pi: f64 = 3.1415;
    _ = pi;

    const User = struct {
        age: u8,
    };

    std.debug.print("Size of user: {} bytes\n", .{@sizeOf(User)});

    const Day = enum { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday };

    var day: Day = .Monday;
    std.debug.print("Today is {}\n", .{day});

    const UserOrDay = union(enum) { user: User, day: Day };

    var userOrDay: UserOrDay = UserOrDay{
        .user = User{ .age = 20 },
    };

    switch (userOrDay) {
        .user => |u| {
            std.log.info("User: {}\n", .{u});
        },
        else => {},
    }
}
