# 🔃 I/O

## ℹ️ About

I/O (Input/Output) is an information processing system designed to send and receive data from a computer hardware component, device, or network

std.io is a zig file that contains I/O streams, Reader/Writer interfaces and common helpers.

## ⤴️ Output

To print in zig, we will use `std.io.getStdOut().writer().print()` function. Here is a code example:

```zig
const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    stdout.print("Hello, {s}.", .{"world"})
}
```

In the `print()` function, we can see two sections: `format` and `arguments`. Simply, `format` is the text which we want to print, and `arguments` are the variables we want to place in `format`. For our situation, `format` is `"Hello, {s}"`, and `arguments` are `"world"`.

In Zig, `arguments` are placed in `format` using brackets. We must write `arguments` type if our `arguments` are arrays. For our situation, `"world"` is a string-a char array. So, we write `s` in our brackets.

For strings, we must write `s` in brackets.
For pointers, we must write `*` in brackets.
For other types, we can simply leave brackets blank, or write `any` in brackets;

You can also add two or more variables to our text. Let's see this in a code example:

```zig
const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    const firstName = "Huseyn";
    const age = 15;
   
    try stdout.print("Hello, my name is {s}, I'm {}.", .{firstName, age});
}
```

If you don't have any arguments, just leave `arguments` brackets empty, and don't write brackets in you text:

```zig
const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    try stdout.print("Hello, world.", .{});
}
```

## ⤵️ Input

To get an user input, we will use `std.io.getStdIn().reader().readUntilDelimiterOrEof()` function. Here is a code example:

```zig
const std = @import("std");

fn ask_user() ![]u8 {
    const stdin = std.io.getStdIn().reader();

    var buf: [1024]u8 = undefined;

    if (try stdin.readUntilDelimiterOrEof(buf[0..], '\n')) |user_input| {
        return user_input;
    } else {
        return "";
    }
}

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();

    try stdout.print("Enter your name: ", .{});

    try stdout.print("Hello, {s}\n", .{try ask_user()});
}
```

You can see that we have an array named `buf`, whose type is `[]u8`. We can change our max input length by changing `buf` array's size. For example, if you want our input to be only 40 characters long, you can change `buf` array's size like this: `var buf: [40]u8 = undefined;`.

And that's it! You learned how to print your text and how to get user input in Zig.