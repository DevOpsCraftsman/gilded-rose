"TextTest",
(
    [
        { name: "Vest", sell_in: 10, quality: 20 },
        { name: "Aged Brie", sell_in: 2, quality: 0 },
        { name: "Juice", sell_in: 5, quality: 7 },
        { name: "Diamond", sell_in: 0, quality: 80 },
        { name: "Diamond", sell_in: -1, quality: 80 },
        { name: "Backstage passes", sell_in: 15, quality: 20 },
        { name: "Backstage passes", sell_in: 10, quality: 49 },
        { name: "Backstage passes", sell_in: 5, quality: 49 },
        { name: "Bio Cake", sell_in: 3, quality: 6}  # <-- :O
    ] |
    { items: ., day: 0 } |
    recurse(.day += 1 | .items = (.items | update_quality); .day < ($ARGS.named.days // 2 | tonumber)) |
    (
        (["-------- day ", (.day | tostring), " --------"] | add),
        ("name, sellIn, quality"),
        (.items[] | [.name, .sell_in, .quality | tostring] | join(", ")),
        ""
    )
)
