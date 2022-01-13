# Environment Setup

Ready to get started ?

First things first, we're going to setup the tools you'll be needing to write some code.

## Operating System

I highly advise to get Linux as this is most likely where your code will end up running most of the time (unless you want to make video games or work on embedded software).

For that there are multiple solutions.

### Windows

If you're running Windows on your computer, you can [install WSL](https://docs.microsoft.com/en-us/windows/wsl/install).

So, either in `cmd.exe` or PowerShell run :

```sh
wsl --install
```

WSL stands for Windows Subsystem for Linux. It basically allows you to run Linux as a program on your Windows machine.

Once that is done, you may or may not have to reboot, I don't remember.

Next step, download ubuntu on the [Microsoft Store](https://www.microsoft.com/en-us/p/ubuntu/9nblggh4msv6#activetab=pivot:overviewtab). Ubuntu is a Linux distribution maintained by Canonical.

You should then be able to start your WSL by typing ubuntu in your program search bar. Once you launched it, you should see a terminal !

### MacOs

If you're running Mac, you should be fine even though all tools aren't necessarily the same.

## Terminal

The terminal is one of the programmer's most important tools. It's a graphical user interface for your shell.
A shell is an interface that executes commands you type in it.

```sh
                        ------------- This is where you type your commands
                        |
        |------------------------------|
prompt>  # blabla blabla.bl --bla | yes
  ^
  |
  --- this is your prompt, it usually displays information about your current path, time, etc
```

Let's give that a shot, open a terminal and type : `ls`.

You should see a list of files that are in your current directory. How do you know in what directory you currently are in ? Either it's displayed in your shell prompt, either you can type : `pwd`.

## Text Editor

Another one  of the most important tools is the text editor. This is how you write your code in files.

We're going to be using [vim](https://www.vim.org/). Don't worry about installing it, it's already there on Ubuntu.

## Your first program

Let's write our first program !

Type `vi write_42.c` in your shell.

You're now in your text editor. To write something in the file, press `i`. This will put you in Insert mode.

Next, type the following :

```c
#include <unistd.h>

int main() {
    write(1, "42", 2);
}
```

Now we want to go back to Normal mode, for that press Escape.

But how do we exit vim ? :thinking:

Well, now that you're in Normal mode, you're going to type a command to `w`rite the file to disk and `q`uit vim. Type the following : `:wq` (you should see it show in the bottom left corner of your editor) and Enter. This saved the content you wrote in the file and exitted vim.

To check everything we wrote in the file we can use the `cat` command.

Run : `cat write_42.c`.

Don't worry if you don't understand what's going on for now, this is only to test if everything is set up properly.

Once you're done with editing your program, let's compile it and see if it runs.

```sh
cc write_42.c

./a.out
```

And that should print `42` !

## Assignement

Finally, I'm going to need to see that you wrote the program correctly.

For that you're going to push the file to github with `git`.

```sh
git add write_42.c
git commit -m "My first program !"
git push
```

