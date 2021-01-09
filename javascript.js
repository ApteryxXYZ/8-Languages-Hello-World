const { appendFileSync, readFileSync } = require("fs"),
    { exec } = require("child_process");

var lastCharacter = readFileSync("text.txt", "utf8").slice(-1),
    command = "ls";

if (lastCharacter === "h") command = "lua lua.lua";

appendFileSync("text.txt", "e");
exec("lua lua.lua");
