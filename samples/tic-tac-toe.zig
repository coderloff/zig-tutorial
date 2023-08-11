const std = @import("std");
const print = std.debug.print;

const Movement = struct { move: u8, place: u8 };

fn get_move(move: u8, table:[3][3]u8) !Movement {
    const stdin = std.io.getStdIn().reader();

    var movement: Movement = undefined;

    var buffer: [1024]u8 = undefined;

    print("Player {c} -> Enter place: ", .{move});

    var place:u8 = undefined;

    if(try stdin.readUntilDelimiterOrEof(buffer[0..], '\n')) |input| {
        while(input[0] < 48 or input[0] > 57){
            return try get_move(move, table);
        }
        place = input[0]-48;
    }else {
        return try get_move(move, table);
    }

    movement.move = move;
    movement.place = place;

    // Error handling
    while(movement.place < 1 or movement.place > 9){
        return try get_move(move, table);
    }
    var index = movement.place-1;
    while(table[index / 3][index % 3] == 'X' or table[index / 3][index % 3] == 'O'){
        return try get_move(move, table);
    }

    return Movement{ .move = move, .place = place };
}

fn check_win(table: [3][3]u8) !u8 {
    if ((table[0][0] == 'X' and table[0][1] == 'X' and table[0][2] == 'X') or // Horizontal: 1
        (table[1][0] == 'X' and table[1][1] == 'X' and table[1][2] == 'X') or // Horizontal: 2
        (table[2][0] == 'X' and table[2][1] == 'X' and table[2][1] == 'X') or // Horizontal: 3
        (table[0][0] == 'X' and table[1][0] == 'X' and table[2][0] == 'X') or // Vertical: 1
        (table[0][1] == 'X' and table[1][1] == 'X' and table[2][1] == 'X') or // Vertical: 2
        (table[0][2] == 'X' and table[1][2] == 'X' and table[2][2] == 'X') or // Vertical: 3
        (table[0][0] == 'X' and table[1][1] == 'X' and table[2][2] == 'X') or // Diagonal: ↘
        (table[0][2] == 'X' and table[1][1] == 'X' and table[2][0] == 'X'))   // Diagonal: ↙
    { 
        return 'X';
    }
    else if ((table[0][0] == 'O' and table[0][1] == 'O' and table[0][2] == 'O') or // Horizontal: 1
        (table[1][0] == 'O' and table[1][1] == 'O' and table[1][2] == 'O') or // Horizontal: 2
        (table[2][0] == 'O' and table[2][1] == 'O' and table[2][1] == 'O') or // Horizontal: 3
        (table[0][0] == 'O' and table[1][0] == 'O' and table[2][0] == 'O') or // Vertical: 1
        (table[0][1] == 'O' and table[1][1] == 'O' and table[2][1] == 'O') or // Vertical: 2
        (table[0][2] == 'O' and table[1][2] == 'O' and table[2][2] == 'O') or // Vertical: 3
        (table[0][0] == 'O' and table[1][1] == 'O' and table[2][2] == 'O') or // Diagonal: ↘
        (table[0][2] == 'O' and table[1][1] == 'O' and table[2][0] == 'O'))   // Diagonal: ↙
    { 
        return 'O';
    }
    else if (
        table[0][0] != ' ' and table[0][1] != ' ' and table[0][2] != ' ' and
        table[1][0] != ' ' and table[1][1] != ' ' and table[1][2] != ' ' and
        table[2][0] != ' ' and table[2][1] != ' ' and table[2][2] != ' '
    ) {
        return 1;
    }
    else {
        return 0;
    }
}

fn print_table(table: [3][3]u8) !void {
    print("\n", .{});
    for (table, 0..) |row, i| {
        for (row, 0..) |item, j| {
            print(" {c} ", .{item});
            if (j != 2) {
                print("|", .{});
            }
        }
        if (i != 2) {
            print("\n------------\n", .{});
        } else {
            print("\n", .{});
        }
    }
    print("\n", .{});
}

fn print_welcome() !void{
    print("---------------------------\n", .{});
    print("Welcome to Tic-Tac-Toe Game\n", .{});
    print("---------------------------\n", .{});
}

fn print_bye(winState: u8) !void{
    print("------------------\n", .{});
    print("Game Ended! ", .{});
    if(winState == 'X') std.debug.print("X won!\n", .{})
    else if(winState == 'O') std.debug.print("O won!\n", .{})
    else std.debug.print("Draw!\n", .{});
    print("------------------\n", .{});
}

pub fn main() !void {
    var table = [3][3]u8{ [3]u8{ ' ', ' ', ' ' }, [3]u8{ ' ', ' ', ' ' }, [3]u8{ ' ', ' ', ' ' } };
    var move: u8 = 'X';

    try print_welcome();

    var winState = try check_win(table);

    while (winState == 0) {
        try print_table(table);

        var movement = try get_move(move, table);

        const index = movement.place - 1;
        table[index / 3][index % 3] = move;

        move = if(move == 'X') 'O' else 'X';

        winState = try check_win(table);
    }

    try print_table(table);

    try print_bye(winState);
}