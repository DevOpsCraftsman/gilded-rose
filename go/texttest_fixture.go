package main

import (
	"fmt"
	"os"
	"strconv"

	"github.com/emilybache/gildedrose-refactoring-kata/gildedrose"
)

func main() {
	fmt.Println("TextTest")

	var items = []*gildedrose.Item{
		{"Vest", 10, 20},
		{"Aged Brie", 2, 0},
		{"Juice", 5, 7},
		{"Diamond", 0, 80},
		{"Diamond", -1, 80},
		{"Backstage passes", 15, 20},
		{"Backstage passes", 10, 49},
		{"Backstage passes", 5, 49},
		{"Bio Cake", 3, 6}, // <-- :O
	}

	days := 2
	var err error
	if len(os.Args) > 1 {
		days, err = strconv.Atoi(os.Args[1])
		if err != nil {
			fmt.Println(err.Error())
			os.Exit(1)
		}
		days++
	}

	for day := 0; day < days; day++ {
		fmt.Printf("-------- day %d --------\n", day)
		fmt.Println("Name, SellIn, Quality")
		for i := 0; i < len(items); i++ {
			fmt.Println(items[i])
		}
		fmt.Println("")
		gildedrose.UpdateQuality(items)
	}
}
