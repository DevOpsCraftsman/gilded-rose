#include <stdio.h>
#include "GildedRose.h"

int
print_item(Item *item)
{
    return printf("%s, %d, %d\n", item->name, item->sellIn, item->quality);
}

int main()
{
    Item items[9];
    int last = 0;
    int day;
    int index;
    
    init_item(items + last++, "Vest", 10, 20);
    init_item(items + last++, "Aged Brie", 2, 0);
    init_item(items + last++, "Juice", 5, 7);
    init_item(items + last++, "Diamond", 0, 80);
    init_item(items + last++, "Diamond", -1, 80);
    init_item(items + last++, "Backstage passes", 15, 20);
    init_item(items + last++, "Backstage passes", 10, 49);
    init_item(items + last++, "Backstage passes", 5, 49);
    // this Bio item doesn't yet work properly
    init_item(items + last++, "Bio Cake", 3, 6);
    
    puts("TextTest");

    for (day = 0; day <= 30; day++)
    {
        printf("-------- day %d --------\n", day);
        printf("name, sellIn, quality\n");
        for(index = 0; index < last; index++) {
            print_item(items + index);
        }
	
        printf("\n");

        update_quality(items, last);
    }
    return 0;
}
