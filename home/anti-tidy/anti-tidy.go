// go mod tidy をした時にライブラリ類が go.mod から
// 消されてしまうのが鬱陶しいので、ここで import しています
// (go mod tidy はほとんど使わないのですが、一応)

// より良い解決策をご存知でしたら是非教えてほしいです！

package main

import (
	_ "github.com/emirpasic/gods/maps/treemap"
	_ "golang.org/x/exp/maps"
	_ "gonum.org/v1/gonum"
)

// import (
// 	"github.com/emirpasic/gods/maps/treemap"
// 	"golang.org/x/exp/maps"
// 	"gonum.org/v1/gonum"
// )
