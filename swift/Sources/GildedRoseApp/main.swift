import GildedRose

let items = [
    Item(name: "Vest", sellIn: 10, quality: 20),
    Item(name: "Aged Brie", sellIn: 2, quality: 0),
    Item(name: "Juice", sellIn: 5, quality: 7),
    Item(name: "Diamond", sellIn: 0, quality: 80),
    Item(name: "Diamond", sellIn: -1, quality: 80),
    Item(name: "Backstage passes", sellIn: 15, quality: 20),
    Item(name: "Backstage passes", sellIn: 10, quality: 49),
    Item(name: "Backstage passes", sellIn: 5, quality: 49),
    // this conjured item does not work properly yet
    Item(name: "Bio Cake", sellIn: 3, quality: 6),
]

let app = GildedRose(items: items)

var days = 2
if CommandLine.argc > 1 {
    days = Int(CommandLine.arguments[1])! + 1
}

for i in 0 ..< days {
    print("-------- day \(i) --------")
    print("name, sellIn, quality")
    for item in items {
        print(item)
    }
    print("")
    app.updateQuality()
}
