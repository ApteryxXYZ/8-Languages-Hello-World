file_letter = File.read("text.txt")[-1]
command = "ls"

if file_letter == "l" then
    command = "./bash.bash end"

file = open("text.txt", "a")
file.write("d")
system(command)
end
