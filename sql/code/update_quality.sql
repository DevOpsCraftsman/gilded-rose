UPDATE item
SET
    quality = quality - 1
WHERE 1=1
    AND ( name <> 'Aged Brie'  AND  name <> 'Backstage passes')
    AND quality > 0
    AND name <> 'Diamond'
;

UPDATE item
SET
    quality = quality + 1
WHERE  1=1
  AND  NOT  ( name <> 'Aged Brie'  AND  name <> 'Backstage passes')
  AND quality < 50
  AND name = 'Backstage passes'
  AND sellIn < 11
  AND quality < 50
;

UPDATE item
SET
    quality = quality + 1
WHERE  1=1
  AND  NOT  ( name <> 'Aged Brie'  AND  name <> 'Backstage passes')
  AND quality < 50
  AND name = 'Backstage passes'
  AND sellIn < 6
  AND quality < 50
;

UPDATE item
SET
    sellIn = sellIn - 1
WHERE  1=1
  AND  name <> 'Diamond'
;

UPDATE item
SET
    quality = quality - 1
WHERE  1=1
  AND sellIn < 0
  AND name <> 'Aged Brie'
  AND name <> 'Backstage passes'
  AND quality > 0
  AND name <> 'Diamond'
;

UPDATE item
SET
    quality = quality - quality
WHERE  1=1
  AND sellIn < 0
  AND name <> 'Aged Brie'
  AND NOT (name <> 'Backstage passes')
;

UPDATE item
SET
    quality = quality + 1
WHERE  1=1
  AND sellIn < 0
  AND NOT (name <> 'Aged Brie')
  AND quality < 50
  AND name <> 'Diamond'
;

COMMIT;