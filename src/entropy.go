package main

import (
  "os/exec"
)

func main() { // not sure why this function isn't working right now, I'll fix it later.
  exec.Command("bin/sh", "-c", "go", "version").Output()
}
