# 🔧 Creating Project

In the previous section, we downloaded zig compiler to our computer. It's time to use it.

Create a folder named whatever you like for working on zig files. Open this folder on VS Code.

After opening, click `Terminal` (or simply create new one by pressing ``Ctrl + Shift + ` ``), and type this:
```cmd
zig init-exe
```

It will create folder named `src`, and two zig files named `main.zig` and `build.zig`.

You can make your changes in `main.zig` file, or simply leave it as it is.

## 🔁 Run

To run this file, open terminal and type this command:

```cmd
zig run src/main.zig
```

It will run `main.zig` file. If you left `main.zig` file as it is, those lines should be printed:

```cmd
All your codebase are belong to us.
Run `zig build test` to run the tests.
```

## 🛠️ Build

To build this file, open terminal and type this command:

```cmd
zig build-exe src/main.zig
```

It will build `main.zig` file. As a result of build, three files will be created: `main.exe`, `main.exe.obj` and `main.pdb`.

For running our build, open the terminal again and type this command:

```cmd
./main
```

It will run the build. If you left `main.zig` file as it is, those lines should be printed:

```cmd
All your codebase are belong to us.
Run `zig build test` to run the tests.
```


And that's it! We learned how to run and build zig file.