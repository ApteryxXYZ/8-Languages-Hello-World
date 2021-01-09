import subprocess

file = open("text.txt", "r")
last_character = file.read()[-1]
command = ["ls"]
file.close()

if last_character == " ":
    command = ["perl", "perl.pl"]

file = open("text.txt", "a")
file.write("w")
file.close()
subprocess.run(command)
