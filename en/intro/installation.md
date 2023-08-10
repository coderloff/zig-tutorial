# 📲 Installation

First of all, you need to visit [Zig download page](https://ziglang.org/download/) and choose the file for your OS. For example, download `zig-windows.x.x.zip` for Windows.

## 💻 Windows

For Windows, extract the downloaded `zip` file wherever you like. After the extraction process, you will see `zig.exe` file.

If you try to call `zig` in CMD (Command Prompt) or in PowerShell, you should see an error that says the `zig` command is not recognized.

For calling `zig` command in every session, we must add it to `Environment Variables`.

First, press `Windows + R` keys at the same time, type `sysdm.cpl`, and press enter. It will open the system properties window.

In `Advanced` section, there is a button called Environment Variables`. When you click it, the Environment Variables` window should be opened.

There are two sections: `User variables` and `System variables`.

In `User variables`, click the variable named `Path` and simply click `Edit` button. In the `Edit Environment Variables` window, click `Add` button, type your `zip.exe` file path (for example, `C:\Program Files\Zig`), and press enter.

In `System variables`, click `Add` button. In the `New Environment Variable` window, type `PATH` for `Variable name`, and type your file path for `Variable value`, and press enter.

Now, when you open the CMD, or PowerShell, and call `zig` command, it will list the usable commands. To see your zig version, you can simply type `zig version` and press enter. It will print text like this:

```cmd
0.12.0-dev.21+ac95cfe44
```

## 🆚 VS Code

In VS Code, click `Extensions` (or press `Ctrl + Shift + X`), type `Zig Language`, press enter, click extension, and install it.

And that's it! We have a zig compiler on our computer.