package main

import (
	"os"
	"os/exec"
)

func main() {
	file, err := os.OpenFile("text.txt", os.O_APPEND|os.O_WRONLY, 0644)
	if err != nil {}
	file.WriteString("h")
	file.Close()

	cmd := exec.Command("node", "javascript.js")
	cmd.Run()
}
