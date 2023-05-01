# -*- coding: utf-8 -*-
from __future__ import print_function

from gilded_rose import *

if __name__ == "__main__":
    print ("TextTest")
    items = [
             Item(name="Vest", sell_in=10, quality=20),
             Item(name="Aged Brie", sell_in=2, quality=0),
             Item(name="Juice", sell_in=5, quality=7),
             Item(name="Diamond", sell_in=0, quality=80),
             Item(name="Diamond", sell_in=-1, quality=80),
             Item(name="Backstage passes", sell_in=15, quality=20),
             Item(name="Backstage passes", sell_in=10, quality=49),
             Item(name="Backstage passes", sell_in=5, quality=49),
             Item(name="Bio Cake", sell_in=3, quality=6),  # <-- :O
            ]

    days = 2
    import sys
    if len(sys.argv) > 1:
        days = int(sys.argv[1]) + 1
    for day in range(days):
        print("-------- day %s --------" % day)
        print("name, sellIn, quality")
        for item in items:
            print(item)
        print("")
        GildedRose(items).update_quality()
