#spawn villagers in, one per bed using other function 
#broken up into each city because /fill has a size limit
#beds are colour coded by orientation
#dundee
fill -1815 66 -35375 -1891 63 -35334 minecraft:command_block{auto:1,Command:"function life:start_pop_north"} replace minecraft:purple_bed[part=foot]
fill -1815 66 -35375 -1891 63 -35334 minecraft:command_block{auto:1,Command:"function life:start_pop_east"} replace minecraft:pink_bed[part=foot]
fill -1815 66 -35375 -1891 63 -35334 minecraft:command_block{auto:1,Command:"function life:start_pop_south"} replace minecraft:magenta_bed[part=foot]
fill -1815 66 -35375 -1891 63 -35334 minecraft:command_block{auto:1,Command:"function life:start_pop_west"} replace minecraft:red_bed[part=foot]
#edinburgh
fill -1987 66 -34981 -2095 61 -35029 minecraft:command_block{auto:1,Command:"function life:start_pop_north"} replace minecraft:purple_bed[part=foot]
fill -1987 66 -34981 -2095 61 -35029 minecraft:command_block{auto:1,Command:"function life:start_pop_east"} replace minecraft:pink_bed[part=foot]
fill -1987 66 -34981 -2095 61 -35029 minecraft:command_block{auto:1,Command:"function life:start_pop_south"} replace minecraft:magenta_bed[part=foot]
fill -1987 66 -34981 -2095 61 -35029 minecraft:command_block{auto:1,Command:"function life:start_pop_west"} replace minecraft:red_bed[part=foot]
#fife
fill -1968 66 -35142 -2017 62 -35090 minecraft:command_block{auto:1,Command:"function life:start_pop_north"} replace minecraft:purple_bed[part=foot]
fill -1968 66 -35142 -2017 62 -35090 minecraft:command_block{auto:1,Command:"function life:start_pop_east"} replace minecraft:pink_bed[part=foot]
fill -1968 66 -35142 -2017 62 -35090 minecraft:command_block{auto:1,Command:"function life:start_pop_south"} replace minecraft:magenta_bed[part=foot]
fill -1968 66 -35142 -2017 62 -35090 minecraft:command_block{auto:1,Command:"function life:start_pop_west"} replace minecraft:red_bed[part=foot]
#glasgow
fill -2576 64 -34961 -2687 63 -34892 minecraft:command_block{auto:1,Command:"function life:start_pop_north"} replace minecraft:purple_bed[part=foot]
fill -2576 64 -34961 -2687 63 -34892 minecraft:command_block{auto:1,Command:"function life:start_pop_east"} replace minecraft:pink_bed[part=foot]
fill -2576 64 -34961 -2687 63 -34892 minecraft:command_block{auto:1,Command:"function life:start_pop_south"} replace minecraft:magenta_bed[part=foot]
fill -2576 64 -34961 -2687 63 -34892 minecraft:command_block{auto:1,Command:"function life:start_pop_west"} replace minecraft:red_bed[part=foot]
#inverness
fill -2619 66 -35978 -2684 63 -35941 minecraft:command_block{auto:1,Command:"function life:start_pop_north"} replace minecraft:purple_bed[part=foot]
fill -2619 66 -35978 -2684 63 -35941 minecraft:command_block{auto:1,Command:"function life:start_pop_east"} replace minecraft:pink_bed[part=foot]
fill -2619 66 -35978 -2684 63 -35941 minecraft:command_block{auto:1,Command:"function life:start_pop_south"} replace minecraft:magenta_bed[part=foot]
fill -2619 66 -35978 -2684 63 -35941 minecraft:command_block{auto:1,Command:"function life:start_pop_west"} replace minecraft:red_bed[part=foot]
#tobermory
fill -3774 79 -35409 -3833 64 -35438 minecraft:command_block{auto:1,Command:"function life:start_pop_north"} replace minecraft:purple_bed[part=foot]
fill -3774 79 -35409 -3833 64 -35438 minecraft:command_block{auto:1,Command:"function life:start_pop_east"} replace minecraft:pink_bed[part=foot]
fill -3774 79 -35409 -3833 64 -35438 minecraft:command_block{auto:1,Command:"function life:start_pop_south"} replace minecraft:magenta_bed[part=foot]
fill -3774 79 -35409 -3833 64 -35438 minecraft:command_block{auto:1,Command:"function life:start_pop_west"} replace minecraft:red_bed[part=foot]
#remove the floating bed pieces
kill @e[type=item,nbt={Item:{id:"minecraft:purple_bed"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:pink_bed"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:red_bed"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:magenta_bed"}}]