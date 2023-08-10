# 📚 Exploring Zig's Standard Library (std)

## ℹ️ About

Zig's Standard Library, often abbreviated as `std`, is a comprehensive collection of modules and utilities that provide a wide range of functionalities for various programming tasks. This article delves into some key aspects of Zig's `std` library, highlighting its usefulness and providing code examples.

## ⚙️ Modules and Utilities

Zig's `std` library encompasses a plethora of modules and utilities that cover diverse programming needs. Some notable areas include:

- **std.debug**: This module offers debugging-related functions, enabling you to print formatted text, assertions, and more.

- **std.mem**: The memory module provides facilities for memory manipulation, allocation, and copying.

- **std.math**: For mathematical computations, Zig's `std.math` module offers various mathematical functions and constants.

- **std.os**: The operating system module provides access to operating system-specific functionalities.

- **std.io**: Zig's `std.io` module facilitates input and output operations, including file I/O and reading user input.

## ⤴️ Using `std.debug`

The `std.debug` module is a powerful tool for debugging and printing. Here's an example of how you can print a formatted message:

```zig
const std = @import("std");

pub fn main() void {
    const name = "Huseyn";
    const age = 15;

    std.debug.print("Name: {s}, Age: {d}\n", .{name, age});
}
```

## ⤵️ Memory Manipulation with `std.mem`

The `std.mem` module provides functions for working with memory. Here's an example of how you can copy memory from one location to another:

```zig
const std = @import("std");

pub fn main() void {
    const source = [4]u8{1,2,3,4};
    var destination: [4]u8 = undefined;

    std.mem.copy(u8,destination[0..], source[0..]);
    std.debug.print("Destination: {d}\n", .{destination});
}
```

## ➗ Mathematical Computations using `std.math`

The `std.math` module offers mathematical functions and constants. Here's an example using the `std.math.sin` function:

```zig
const std = @import("std");

pub fn main() void {
    const angle = 45.0;
    const sinValue = std.math.sin(angle);
    std.debug.print("Sine of {d}: {d}\n", .{angle, sinValue});
}
```

## 📂 File I/O with `std.io`
The `std.io` module facilitates file input and output. Here's an example of how you can read and print the contents of a file:

```zig
const std = @import("std");

pub fn main() !void {
    const filename = "sample.txt";
    const file = try std.fs.cwd().openFile(filename, .{ });

    var buffer: [1024]u8 = undefined;
    const bytesRead = try file.read(buffer[0..]);

    std.debug.print("Read {d} bytes from '{s}':\n{s}\n", .{bytesRead, filename, buffer});
}
```

## 📝 Conclusion

Zig's Standard Library (`std`) is a valuable resource for a wide range of programming tasks. Its extensive modules and utilities empower developers with efficient tools to write clean, robust, and feature-rich code. By exploring and utilizing the functionalities provided by `std`, you can enhance your Zig programming experience and create high-quality applications.

And that's it! We learned how to use Zig's Standard Library (`std`).