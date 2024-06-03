package main

import (
	"context"
	"fmt"
)

// App struct
type App struct {
	ctx context.Context
}

// NewApp creates a new App application struct
func NewApp() *App {
	return &App{}
}

// startup is called when the app starts. The context is saved
// So we can call the runtime methods
func (a *App) startup(ctx context.Context) {
	a.ctx = ctx
}

// Greet returns a greeting for the given name
func (a *App) Greet(name string) string {
	return fmt.Sprintf("Hello %s, It's show time!", name)
}

func (a *App) Greet1(name string) string {
	return fmt.Sprintf("%s", name)
}

// GetMap returns a map with some data
func (a *App) GetMap1() map[string]string {
	// 创建并返回一个map
	return map[string]string{
		"key1": "value1",
		"key2": "value2",
	}
}

func (a *App) GetMap2() []map[string]string {
	// 创建并返回一个包含3个map的数组
	return []map[string]string{
		{"key1": "value1", "key2": "value2"},
		{"keyA": "valueA", "keyB": "valueB"},
		{"keyX": "valueX", "keyY": "valueY"},
	}
}
