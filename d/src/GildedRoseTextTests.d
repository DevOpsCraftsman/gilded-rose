import GildedRose;

int main()
{
    import std.stdio : writefln, writeln;

    Item[] items = [
        Item("Vest", 10, 20),
        Item("Aged Brie", 2, 0),
        Item("Juice", 5, 7),
        Item("Diamond", 0, 80),
        Item("Diamond", -1, 80),
        Item("Backstage passes", 15, 20),
        Item("Backstage passes", 10, 49),
        Item("Backstage passes", 5, 49),
        // this Bio item doesn't yet work properly
        Item("Bio Cake", 3, 6),
    ];

    auto app = new GildedRose(items);

    writeln("TextTest");

    for (int day = 0; day <= 30; day++)
    {
        writefln!"-------- day %s --------"(day);
        writeln("Item(name, sellIn, quality)");
        foreach (item; app.items)
        {
            writeln(item);
        }
        writeln;

        app.updateQuality;
    }

    return 0;
}
