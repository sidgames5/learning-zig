// video 6

const std = @import("std");

const Season = enum {
    Spring,
    Summer,
    Fall,
    Winter,

    pub inline fn isWinter(self: Season) bool {
        return self == .Winter;
    }
};

pub fn main() void {
    var season: Season = .Winter;

    std.log.info("Season is {}, Size of data {}", .{ @intFromEnum(season), @sizeOf(Season) });
    std.log.info("{}", .{season.isWinter()});
}
