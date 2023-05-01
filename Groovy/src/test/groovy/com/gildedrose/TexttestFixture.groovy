package com.gildedrose

println("TextTest")

Item[] items = [
        new Item("Vest", 10, 20),
        new Item("Aged Brie", 2, 0),
        new Item("Juice", 5, 7),
        new Item("Diamond", 0, 80),
        new Item("Diamond", -1, 80),
        new Item("Backstage passes", 15, 20),
        new Item("Backstage passes", 10, 49),
        new Item("Backstage passes", 5, 49),
        // this conjured item does not work properly yet
        new Item("Bio Cake", 3, 6)] as Item[]

GildedRose app = new GildedRose(items)

int days = 2
if (args.length > 0) {
    days = Integer.parseInt(args[0]) + 1
}

for (int i = 0; i < days; i++) {
    println("-------- day " + i + " --------")
    println("name, sellIn, quality")
    for (Item item in items) {
        println(item)
    }
    println ""
    app.updateQuality()
}
