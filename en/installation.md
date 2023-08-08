## 📲 Installation

First of all, you need to visit [Zig download page](https://ziglang.org/download/) and choose file for your OS. For example, download `zig-windows.x.x.zip` for Windows.

### 💻 Windows

For windows, extract downloaded `zip` file wherever you like. After the extraction process, you will see `zig.exe` file.

If you try to call `zig` in CMD (Command Prompt), or in PowerShell, you should see an error, that explains the `zig` command is not recognized.

For calling `zig` command in every session, we must add it to `Envrionment Variables`.

First, press `Windows + R` keys at the same time, type `sysdm.cpl` and press enter. It will open system properties window.

In `Advanced` section, there is button called `Envrionment Variables`. When you click it, `Environment Variables` window should be opened.

There are 2 sections: `User variables` and `System variables`.

In `User variables`, click variable named `Path` and simply click `Edit` button. In the `Edit Environment Variables` window, click `Add` button, type your `zip.exe` file path (for example, `C:\Program Files\Zig`), and press enter.

In `System variables`, click `Add` button. In the `New Environment Variable` window, type `PATH` for `Variable name`, and type your file path for `Variable value`, and press enter.

Now, when you open the CMD, or PowerShell, and call `zig` command, it will list the usable commands. For seeing your zig version, you can simply type `zig version` and press enter. It will print text like this:
```
0.12.0-dev.21+ac95cfe44
```

And, that's it! You have a zig compiler in your computer.