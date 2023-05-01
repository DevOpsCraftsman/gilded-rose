package com.gildedrose

fun main(args: Array<String>) {

    println("TextTest")

    val items = listOf(Item("Vest", 10, 20), //
            Item("Aged Brie", 2, 0), //
            Item("Juice", 5, 7), //
            Item("Diamond", 0, 80), //
            Item("Diamond", -1, 80),
            Item("Backstage passes", 15, 20),
            Item("Backstage passes", 10, 49),
            Item("Backstage passes", 5, 49),
            // this conjured item does not work properly yet
            Item("Bio Cake", 3, 6))

    val app = GildedRose(items)

    var days = 2
    if (args.size > 0) {
        days = Integer.parseInt(args[0]) + 1
    }

    for (i in 0..days - 1) {
        println("-------- day $i --------")
        println("name, sellIn, quality")
        for (item in items) {
            println(item)
        }
        println()
        app.updateQuality()
    }
}
