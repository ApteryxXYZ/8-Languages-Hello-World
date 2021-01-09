local file = io.open("text.txt", "a+")
local last_character = string.sub(file:read(), -1)
local command = "ls"

if last_character == "e" then
    command = "lua lua.lua"
elseif last_character == "l" then
    command = "perl perl.pl"
elseif last_character == "r" then
    command = "ruby ruby.rb"
end

file:write("l")
file:close()
os.execute(command)
