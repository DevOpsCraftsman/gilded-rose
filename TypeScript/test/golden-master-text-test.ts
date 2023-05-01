import { Item, GildedRose } from '../app/gilded-rose';

const items = [
  new Item("Vest", 10, 20), //
  new Item("Aged Brie", 2, 0), //
  new Item("Juice", 5, 7), //
  new Item("Diamond", 0, 80), //
  new Item("Diamond", -1, 80),
  new Item("Backstage passes", 15, 20),
  new Item("Backstage passes", 10, 49),
  new Item("Backstage passes", 5, 49),
  // this conjured item does not work properly yet
  new Item("Bio Cake", 3, 6)];


const gildedRose = new GildedRose(items);

let days: number = 2;
if (process.argv.length > 2) {
    days = +process.argv[2];
  }

for (let i = 0; i < days; i++) {
  console.log("-------- day " + i + " --------");
  console.log("name, sellIn, quality");
  items.forEach(element => {
    console.log(element.name + ' ' + element.sellIn + ' ' + element.quality);

  });
  console.log();
  gildedRose.updateQuality();
}
