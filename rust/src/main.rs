mod gildedrose;

use gildedrose::{GildedRose, Item};

fn main() {
    let items = vec![
        Item::new("Vest", 10, 20),
        Item::new("Aged Brie", 2, 0),
        Item::new("Juice", 5, 7),
        Item::new("Diamond", 0, 80),
        Item::new("Diamond", -1, 80),
        Item::new("Backstage passes", 15, 20),
        Item::new("Backstage passes", 10, 49),
        Item::new("Backstage passes", 5, 49),
        // this conjured item does not work properly yet
        Item::new("Bio Cake", 3, 6),
    ];
    let mut rose = GildedRose::new(items);

    println!("TextTest");
    for i in 0..=30 {
        println!("-------- day {} --------", i);
        println!("name, sellIn, quality");
        for item in &rose.items {
            println!("{}", item);
        }
        println!();
        rose.update_quality();
    }
}
