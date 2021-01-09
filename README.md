<h1 align="center">
    <b>8 Languages, Hello World</b>
</h1>

<p id="info-badges" align="center">
    <img src="https://img.shields.io/badge/made%20by-Apteryx-red.svg">
    <img src="https://img.shields.io/github/stars/ApteryxXYZ/8-Languages-Hello-World.svg?style=flat">
</p>

<p id="version-badges" align="center">
    <img src="https://img.shields.io/badge/Go-1.15.6-teal.svg?logo=go">
    <img src="https://img.shields.io/badge/Node.js-14.15.0-lime.svg?logo=node.js">
    <img src="https://img.shields.io/badge/Lua-5.1.5-cyan.svg?logo=lua">
    <img src="https://img.shields.io/badge/Perl-5.28.1-purple.svg?logo=perl">
    <img src="https://img.shields.io/badge/PHP-7.3.19-blue.svg?logo=php">
    <img src="https://img.shields.io/badge/Python3-3.7.3-blue.svg?logo=python">
    <img src="https://img.shields.io/badge/R-3.5.2-blue.svg?logo=r">
    <img src="https://img.shields.io/badge/Ruby-2.5.5-red.svg?logo=ruby">
</p>

## Introduction

Welcome to **8 Languages, Hello World**, a small project that uses 8 different programming/scripting languages to print 'hello world' to a single file, one character at a time, eventally printing the files content to the console. Each language represents a character, getting executed one by one. This was made and tested on a Raspberry Pi 4. Running this may take a bit of time, installing all the programming languages/runtimes etc, so [here](https://youtu.be/u-57ticG3wg) is a YouTube video of this in process. If you want to try and run it yourself click [here](#run) for some tips.

## Languages

| Language             | Letter |
| -------------------- | ------ |
| Go                   | H      |
| JavaScript (Node.js) | E      |
| Lua                  | L      |
| Perl                 | O      |
| PHP                  | space  |
| Python3              | W      |
| R                    | R      |
| Ruby                 | D      |

## Process

The process can either be started by running `./bash.bash` or `go run go.go`.

The `bash.bash` file is a kind of manager, running it at the start will clear the text.txt file and then run `go run go.go`. At the end, it is run with the argurment 'end' which will echo the content of the text.txt file.

Each file prints their letter to the text.txt and then runs a command that executes the next file. Some files will need to be executed more than once, therefore some will check what the last character added to the file was. For example the lua.lua file prints the letter 'l' which appears mutliple times in 'hello world', so when adding the first 'l' (he + l) it will check if the last charater in the text.txt is an 'e', if it is, then it sets the next command to execute to be itself. Next the last character is 'l' (hel + l) , so then it'll know to execute the Perl script to continue.

### Go > JavaScript > Lua > Lua > Perl > PHP > Python > Perl > R > Lua > Ruby

## Run
Note: This was made an tested on a Rapsberry Pi.

You'll need to install and setup all of the programming/scripting languages/runtimes that this project uses. The versions I used can be found at the very top of this README.<br>
[Go](https://golang.org/),
[Node.js](https://nodejs.org/)
[Lua](http://www.lua.org/),
[Perl](https://www.perl.org/),
[PHP](https://www.php.net/),
[Python3](https://www.python.org/),
[R](https://www.r-project.org/), and
[Ruby](https://www.ruby-lang.org/).

To start running the process, enter the command `./bash.bash` to run the bash file.

If for whatever reason when running the project 'hello world' doesn't get written to the text.txt and there is no errors, then try running each file by itself and see if any errors get returned.

**Permission denied**: When running the `./bash.bash` file you get an error saying something like 'bash: ./bash.bash: Permission denied' then run the command `chmod +x bash.bash` to change its permissions.

**Inserce world writable dir (path)**: This error comes from Ruby, saying that somehow, (path) was added to your $PATH (the list of directories the OS searches when trying to find an executable to launch). To fix, run the command `chmod go-w /your/path` replacing '/your/path' with the (path).
