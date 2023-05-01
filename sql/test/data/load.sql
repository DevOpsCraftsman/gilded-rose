DELETE FROM item;

INSERT INTO item (name, sellIn, quality) VALUES ('Vest', 10, 20);
INSERT INTO item (name, sellIn, quality) VALUES ('Aged Brie', 2, 0);
INSERT INTO item (name, sellIn, quality) VALUES ('Juice', 5, 7);
INSERT INTO item (name, sellIn, quality) VALUES ('Diamond', 0, 80);
INSERT INTO item (name, sellIn, quality) VALUES ('Diamond', -1, 80);
INSERT INTO item (name, sellIn, quality) VALUES ('Backstage passes', 15, 20);
INSERT INTO item (name, sellIn, quality) VALUES ('Backstage passes', 10, 49);
INSERT INTO item (name, sellIn, quality) VALUES ('Backstage passes', 5, 49);

-- this conjured item does not work properly yet
INSERT INTO item (name, sellIn, quality) VALUES ('Bio Cake', 3, 6);

COMMIT;
