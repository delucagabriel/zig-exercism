const std = @import("std");

fn getScore(s: u8) u32 {
    switch (s) {
        'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T' => return 1,
        'D', 'G' => return 2,
        'B', 'C', 'M', 'P' => return 3,
        'F', 'H', 'V', 'W', 'Y' => return 4,
        'K' => return 5,
        'J', 'X' => return 8,
        'Q', 'Z' => return 10,
        else => return 0,
    }
}

pub fn score(s: []const u8) u32 {
    var numScore: u32 = 0;
    for (s) |character| {
        const value = getScore(std.ascii.toUpper(character));
        numScore += value;
    }
    return numScore;
}
