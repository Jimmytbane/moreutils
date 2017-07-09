package main

import (
	"fmt"
	"os/exec"
)

func main() {
  out, err := exec.Command("openssl", "rand", "-base64", "15").Output()
	if err != nil {
		fmt.Println("Error1")
	}
  fmt.Printf("%s", out)
}
