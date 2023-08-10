# 📚 Mathematical Computations using `std.math` in Zig

## ℹ️ About

Mathematical computations are a fundamental aspect of programming. This article explores the `std.math` module in the Zig programming language, which provides a wide range of mathematical functions for performing various calculations.

## 🔢 Basic Mathematical Operations

Zig's `std.math` module offers various functions for performing basic mathematical operations. Here are some examples:

### Addition and Subtraction

```zig
const std = @import("std");

pub fn main() !void {
    const sum = try std.math.add(u8, 5, 3);
    const difference = try std.math.sub(u8, 10, 4);

    std.debug.print("Sum: {d}, Difference: {d}\n", .{sum, difference});
}
```

### Multiplication and Division

```zig
const std = @import("std");

pub fn main() !void {
    const product = try std.math.mul(u8,7, 6);
    const quotient = try std.math.divExact(u8,20, 5);

    std.debug.print("Product: {d}, Quotient: {d}\n", .{product, quotient});
}
```

## ⤴️ Trigonometric Functions

The `std.math` module also provides trigonometric functions for working with angles. Here are some examples:

### Sine and Cosine

```zig
const std = @import("std");

pub fn main() void {
    const angle = 30.0;
    const sine = std.math.sin(std.math.degreesToRadians(f32, angle));
    const cosine = std.math.cos(std.math.degreesToRadians(f32, angle));

    std.debug.print("Sine: {d}, Cosine: {d}\n", .{sine, cosine});
}
```

### Tangent and Arc Tangent

```zig
const std = @import("std");

pub fn main() void {
    const angle = 45.0;
    const tangent = std.math.tan(std.math.degreesToRadians(f32, angle));
    const arc_tangent = std.math.atan(std.math.degreesToRadians(f32, angle));

    std.debug.print("Tangent: {d}, Arc Tangent: {d}\n", .{tangent, arc_tangent});
}
```

## ⤴️ Exponential and Logarithmic Functions

Zig's `std.math` module includes functions for exponential and logarithmic calculations. Here are some examples:

### Exponential and Natural Logarithm

```zig
const std = @import("std");

pub fn main() void {
    const base = 2.0;
    const exponent = 3.0;
    const power = std.math.pow(f32,base, exponent);

    const number = 8.0;
    const natural_log = std.math.log(f32,base, number);

    std.debug.print("Power: {d}, Natural Log: {d}\n", .{power, natural_log});
}
```

## 📝 Conclusion

The `std.math` module in Zig provides a versatile set of functions for performing various mathematical computations. From basic arithmetic operations to trigonometric functions, exponential calculations, and logarithmic functions, Zig's standard library equips developers with the tools needed to work with numbers effectively.

By leveraging `std.math`, you can perform precise mathematical calculations in your Zig programs and build applications that require complex computations.

And that's it! You learned how to use mathematical functions in Zig.