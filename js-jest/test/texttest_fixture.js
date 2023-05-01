
const { Shop, Item } = require("../src/gilded_rose");

const items = [
  new Item("Vest", 10, 20),
  new Item("Aged Brie", 2, 0),
  new Item("Juice", 5, 7),
  new Item("Diamond", 0, 80),
  new Item("Diamond", -1, 80),
  new Item("Backstage passes", 15, 20),
  new Item("Backstage passes", 10, 49),
  new Item("Backstage passes", 5, 49),

  // This Bio item does not work properly yet
  new Item("Bio Cake", 3, 6),
];

const days = Number(process.argv[2]) || 2;
const gildedRose = new Shop(items);

console.log("TextTest");
for (let day = 0; day < days; day++) {
  console.log(`\n-------- day ${day} --------`);
  console.log("name, sellIn, quality");
  items.forEach(item => console.log(`${item.name}, ${item.sellIn}, ${item.quality}`));
  gildedRose.updateQuality();
}
