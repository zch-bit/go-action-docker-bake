package main

import (
	"fmt"
	"time"
)

func main() {
	for {
		fmt.Println("Sleep...")
		time.Sleep(3 * time.Second)

	}

}
a
func IntMin(a, b int) int {
	if a < b {
		return a
	}
	return b
}
