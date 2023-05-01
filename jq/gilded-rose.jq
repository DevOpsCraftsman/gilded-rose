def update_quality:
    [
        foreach .[] as $item (
            null;
            $item |
            if .name != "Aged Brie" and .name != "Backstage passes" then
                if .quality > 0 then
                    if .name != "Diamond" then
                        .quality = .quality - 1
                    else . end
                else . end
            else
                if .quality < 50 then
                    .quality = .quality + 1
                    |
                    if .name == "Backstage passes" then
                        if .sell_in < 11 then
                            if .quality < 50 then
                                .quality = .quality + 1
                            else . end
                        else . end
                        |
                        if .sell_in < 6 then
                            if .quality < 50 then
                                .quality = .quality + 1
                            else . end
                        else . end
                    else . end
                else . end
            end
            |
            if .name != "Diamond" then
                .sell_in = .sell_in - 1
            else . end
            |
            if .sell_in < 0 then
                if .name != "Aged Brie" then
                    if .name != "Backstage passes" then
                        if .quality > 0 then
                            if .name != "Diamond" then
                                .quality = .quality - 1
                            else . end
                        else . end
                    else
                        .quality = .quality - .quality
                    end
                else
                    if .quality < 50 then
                        .quality = .quality + 1
                    else . end
                end
            else . end
        )
    ];
