package main

import (
	"gopkg.in/macaron.v1"
)

func main() {
	m := macaron.New()
	dir := "static"
	m.Use(macaron.Static(dir, macaron.StaticOptions{
		Prefix:      "/",
		SkipLogging: true,
	}))
	m.Run(8081)
}
