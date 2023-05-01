package com.gildedrose;

public class Program {

	public static void main(String... args) {
		System.out.println("TextTest");

		Item[] items = new Item[] { 
				new Item("Vest", 10, 20), 
				new Item("Aged Brie", 2, 0),
				new Item("Juice", 5, 7), 
				new Item("Diamond", 0, 80),
				new Item("Diamond", -1, 80),
				new Item("Backstage passes", 15, 20),
				new Item("Backstage passes", 10, 49),
				new Item("Backstage passes", 5, 49),
				// this conjured item does not work properly yet
				new Item("Bio Cake", 3, 6) };

		GildedRose app = new GildedRose(items);

		for (int i = 0; i < 31; i++) {
			System.out.println("-------- day " + i + " --------");
			System.out.println("name, sellIn, quality");
			for (int j = 0; j < items.length; j++) {
				System.out.println(items[j]);
			}
			System.out.println("");
			app.updateQuality();
		}
	}
}
