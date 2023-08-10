# 📝 Test

In the previous section, we talked about creating zig project, building and running it. You can also test your project.

For testing, Zig has unique struct named `test`. To use it, add this line to your `main.zig` file:

```zig
test "simple test" {
    const x = 0;
    try std.testing.expect(x == 0);
}
```

After, simply type `zig test src/main.zig` command on termnial and press enter. It should print line like this:

```cmd
All 1 tests passed.
```

That's because we declared x's value as 0 in the first line, and in the second line we said that if x equals 0, return true.

There are many new terms like `std`, `test`, `testing`, `expect`, `try`, etc. Don't worry about them; these will be explained in more detail in the following sections.

And that's it! We learned how to test a zig file.