import GildedRose;

unittest
{
    Item[] items = [ Item("Foo", 0, 0)];
    auto app = new GildedRose(items);

    app.updateQuality;

    assert("fixme" == app.items[0].name);
}

void example()
{
    Item[] items = [
        Item("Vest", 10, 20),
        Item("Aged Brie", 2, 0),
        Item("Juice", 5, 7),
        Item("Diamond", 0, 80),
        Item("Backstage passes", 15, 20),
        Item("Bio Cake", 3, 6),
    ];
    auto app = new GildedRose(items);
    app.updateQuality;
}
