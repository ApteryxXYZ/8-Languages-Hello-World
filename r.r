file_content <- readLines("text.txt", warn = FALSE)
last_character <- substr(file_content, nchar(file_content), nchar(file_content))
command <- "ls"

if (last_character == "o") command <- "lua lua.lua"

cat("r", file = "text.txt", append = TRUE, sep = '')
system(command)
