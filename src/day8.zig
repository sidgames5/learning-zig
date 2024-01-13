// video 7

const std = @import("std");

pub fn main() void {
    var age: u32 = 1;

    if (age >= 18) {
        std.log.info("You are an adult", .{});
    } else if (age >= 13) {
        std.log.info("You are a teenager", .{});
    } else if (age >= 10) {
        std.log.info("You are a pre-teen", .{});
    } else if (age >= 3) {
        std.log.info("You are a kid", .{});
    } else {
        std.log.info("You are an infant", .{});
    }

    var season: u2 = 3;
    // Spring - 0
    // Summer - 1
    // Fall - 2
    // Winter - 3

    switch (season) {
        0 => {
            std.log.info("The weather is warming up and it is raining", .{});
        },
        1 => {
            std.log.info("The weather is hot", .{});
        },
        2 => {
            std.log.info("The weather is cooling down and leaves are falling", .{});
        },
        3 => {
            std.log.info("The weather is cold and it is snowing", .{});
        },
    }
}
