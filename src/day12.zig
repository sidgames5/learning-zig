// video 12

const std = @import("std");

const PlaybackError = error{ IOError, StackOverflowError, StreamCorruptedError, SomeShitWentDownError };

const MemoryError = error{OutOfMemory};

fn playSong(succeed: bool) PlaybackError!bool {
    if (succeed) return true;
    return PlaybackError.SomeShitWentDownError;
}

pub fn main() void {
    const res: bool = playSong(false) catch |err| blk: {
        std.log.err("Error: {}", .{err});
        break :blk false;
    };
    std.log.info("{any}", .{res});
}
