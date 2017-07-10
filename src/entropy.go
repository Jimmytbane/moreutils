package main

import (
	"fmt"
	"os/exec"
)

func main() {
	out, err := exec.Command("cat", "/proc/sys/kernel/random/entropy_avail").Output()
	if err != nil {
		fmt.Println("Error1")
	}
	fmt.Printf("Linux entropy --> %s", out)
}
