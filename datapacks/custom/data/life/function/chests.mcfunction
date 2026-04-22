#remove old armor stands and signs
kill @e[tag=shop]
#dundee - V&A
summon armor_stand -1862 66 -35330 {Rotation:[-90.0f],Tags:[shop],ArmorItems:[{id:netherite_boots,Count:1},{id:netherite_leggings,Count:1},{id:netherite_chestplate,Count:1},{id:netherite_helmet,Count:1}]}
summon armor_stand -1861 66 -35327 {Rotation:[180.0f],Tags:[shop],ArmorItems:[{id:iron_boots,Count:1},{id:iron_leggings,Count:1},{id:iron_chestplate,Count:1},{id:iron_helmet,Count:1}]}
summon item_frame -1862 66 -35332 {Tags:[shop],Facing:5,Item:{id:amethyst_cluster,Count:1}}
summon item_frame -1862 66 -35333 {Tags:[shop],Facing:5,Item:{id:warped_fungus,Count:1}}
#dundee - McManus
summon armor_stand -1838 66 -35372 {Rotation:[180.0f],Tags:[shop],ArmorItems:[{id:iron_boots,Count:1},{id:iron_leggings,Count:1},{id:iron_chestplate,Count:1},{id:iron_helmet,Count:1}]}
summon armor_stand -1832 66 -35372 {Rotation:[180.0f],Tags:[shop],ArmorItems:[{id:iron_boots,Count:1},{id:iron_leggings,Count:1},{id:iron_chestplate,Count:1},{id:iron_helmet,Count:1}]}
#dundee - Overgate:clothes shop
summon armor_stand -1870 66 -35371 {Rotation:[-45.0f],Tags:[shop],ArmorItems:[{id:diamond_boots,Count:1},{id:netherite_leggings,Count:1},{id:golden_chestplate,Count:1},{id:diamond_helmet,Count:1}]}
summon armor_stand -1869 66 -35371 {Rotation:[0.0f],Tags:[shop],ArmorItems:[{id:iron_boots,Count:1},{id:leather_leggings,Count:1},{id:diamond_chestplate,Count:1},{id:netherite_helmet,Count:1}]}
setblock -1870 66 -35369 air
setblock -1870 66 -35369 chest[facing=east]{Items:[{Slot:0,id:leather_chestplate,Count:1,tag:{display:{color:11546150}}},{Slot:1,id:leather_chestplate,Count:1,tag:{display:{color:16351261}}},{Slot:2,id:leather_chestplate,Count:1,tag:{display:{color:16701501}}},{Slot:3,id:leather_chestplate,Count:1,tag:{display:{color:8439583}}},{Slot:4,id:leather_chestplate,Count:1,tag:{display:{color:3847130}}},{Slot:5,id:leather_chestplate,Count:1,tag:{display:{color:8991416}}},{Slot:6,id:leather_chestplate,Count:1,tag:{display:{color:15961002}}},{Slot:7,id:leather_chestplate,Count:1,tag:{display:{color:16383998}}}]} replace
#dundee - Overgate:curiosities
setblock -1875 66 -35369 air
setblock -1875 66 -35369 chest[facing=east]{Items:[{Slot:0,id:amethyst_shard,Count:1},{Slot:3,id:brick,Count:44},{Slot:8,id:firework_rocket,Count:1},{Slot:9,id:ender_pearl,Count:1},{Slot:14,id:cocoa_beans,Count:1},{Slot:20,id:music_disc_pigstep,Count:1},{Slot:26,id:axolotl_bucket,Count:1}]} replace
#dundee - Overgate:cafe
setblock -1877 66 -35371 air
setblock -1877 66 -35371 chest[facing=west]{Items:[{Slot:0,id:mushroom_stew,Count:1},{Slot:1,id:mushroom_stew,Count:1},{Slot:9,id:rabbit_stew,Count:1},{Slot:10,id:rabbit_stew,Count:1},{Slot:2,id:mushroom_stew,Count:1},{Slot:18,id:bread,Count:26},{Slot:19,id:cookie,Count:14}]} replace
#dundee - Overgate:beverage shop
setblock -1880 66 -35365 air
setblock -1880 66 -35365 chest[facing=north]{Items:[{Slot:0,id:honey_bottle,Count:1},{Slot:1,id:potion,Count:1,tag:{Potion:"minecraft:water"}},{Slot:2,id:lingering_potion,Count:1,tag:{Potion:"minecraft:water"}},{Slot:3,id:lingering_potion,Count:1,tag:{Potion:"minecraft:water"}},{Slot:4,id:lingering_potion,Count:1,tag:{Potion:"minecraft:long_invisibility"}}]} replace
#dundee - Overgate:fishmonger
setblock -1880 66 -35361 air
setblock -1880 66 -35361 chest[facing=north]{Items:[{Slot:0,id:cod,Count:12},{Slot:1,id:cooked_cod,Count:3},{Slot:9,id:salmon,Count:7},{Slot:10,id:cooked_salmon,Count:2},{Slot:18,id:dried_kelp,Count:1}]} replace
#edinburgh - tescos
summon item_frame -2064 66 -35024 {Tags:[shop],Facing:3,Item:{id:carrot,Count:1}}
setblock -2063 64 -35026 air
setblock -2063 64 -35026 chest[facing=west]{Items:[{Slot:0,id:carrot,Count:21},{Slot:1,id:carrot,Count:26},{Slot:2,id:carrot,Count:17},{Slot:3,id:potato,Count:27},{Slot:4,id:potato,Count:20},{Slot:5,id:potato,Count:18},{Slot:6,id:beetroot,Count:36},{Slot:7,id:beetroot,Count:36},{Slot:9,id:sweet_berries,Count:44},{Slot:10,id:sweet_berries,Count:20},{Slot:11,id:melon_slice,Count:21},{Slot:12,id:melon_slice,Count:43},{Slot:13,id:apple,Count:16},{Slot:14,id:apple,Count:27},{Slot:15,id:apple,Count:21},{Slot:18,id:wheat,Count:64},{Slot:19,id:sugar,Count:64},{Slot:20,id:honey_bottle,Count:16}]} replace
#edinburgh - waterstones
summon item_frame -2060 66 -35024 {Tags:[shop],Facing:3,Item:{id:book,Count:1}}
setblock -2059 64 -35026 air
setblock -2059 64 -35026 chest[facing=west]{Items:[{Slot:0,id:book,Count:12},{Slot:1,id:book,Count:4},{Slot:2,id:book,Count:7},{Slot:3,id:book,Count:9},{Slot:4,id:book,Count:6},{Slot:5,id:book,Count:10},{Slot:6,id:book,Count:14},{Slot:7,id:book,Count:2},{Slot:9,id:writable_book,Count:1},{Slot:10,id:writable_book,Count:1},{Slot:11,id:writable_book,Count:1}]} replace
#edinburgh - fish shop
summon item_frame -2056 66 -35024 {Tags:[shop],Facing:3,Item:{id:salmon,Count:1}}
setblock -2055 64 -35026 air
setblock -2055 64 -35026 chest[facing=west]{Items:[{Slot:0,id:salmon,Count:49},{Slot:1,id:salmon,Count:15},{Slot:2,id:cod,Count:8},{Slot:3,id:cod,Count:22},{Slot:4,id:cod,Count:34},{Slot:9,id:tropical_fish,Count:22},{Slot:10,id:tropical_fish,Count:10},{Slot:11,id:pufferfish,Count:11},{Slot:18,id:dried_kelp,Count:62}]} replace
#edinburgh - butcher shop
summon item_frame -2052 66 -35024 {Tags:[shop],Facing:3,Item:{id:cooked_beef,Count:1}}
setblock -2051 64 -35026 air
setblock -2051 64 -35026 chest[facing=west]{Items:[{Slot:0,id:mutton,Count:36},{Slot:1,id:mutton,Count:10},{Slot:2,id:mutton,Count:18},{Slot:3,id:beef,Count:43},{Slot:4,id:beef,Count:21},{Slot:5,id:porkchop,Count:61},{Slot:9,id:chicken,Count:11},{Slot:10,id:chicken,Count:51},{Slot:11,id:chicken,Count:2},{Slot:12,id:rabbit,Count:21}]} replace
#edinburgh - castle
summon armor_stand -2055 67 -35007 {Rotation:[-110.0f],Tags:[shop],ArmorItems:[{id:iron_boots,Count:1},{id:iron_leggings,Count:1},{id:iron_chestplate,Count:1},{id:iron_helmet,Count:1}]}
summon armor_stand -2055 67 -35008 {Rotation:[-90.0f],Tags:[shop],ArmorItems:[{id:golden_boots,Count:1},{id:golden_leggings,Count:1},{id:golden_chestplate,Count:1},{id:golden_helmet,Count:1}]}
summon armor_stand -2055 67 -35009 {Rotation:[-70.0f],Tags:[shop],ArmorItems:[{id:iron_boots,Count:1},{id:iron_leggings,Count:1},{id:iron_chestplate,Count:1},{id:iron_helmet,Count:1}]}
#fife - fish shop
summon item_frame -1987 66 -35100 {Tags:[shop],Facing:4,Item:{id:cod,Count:1}}
setblock -1983 64 -35099 air
setblock -1983 64 -35099 chest[facing=north]{Items:[{Slot:0,id:cod,Count:23},{Slot:1,id:cod,Count:13},{Slot:2,id:cod,Count:18},{Slot:8,id:fishing_rod,Count:1},{Slot:9,id:salmon,Count:13},{Slot:10,id:salmon,Count:11},{Slot:17,id:tropical_fish_bucket,Count:1},{Slot:18,id:cooked_salmon,Count:10},{Slot:19,id:cooked_cod,Count:7}]} replace
#fife - bakery
summon item_frame -1987 66 -35105 {Tags:[shop],Facing:4,Item:{id:bread,Count:1}}
setblock -1983 64 -35104 air
setblock -1983 64 -35104 chest[facing=north]{Items:[{Slot:0,id:cookie,Count:59},{Slot:1,id:bread,Count:17},{Slot:2,id:bread,Count:10},{Slot:3,id:bread,Count:23},{Slot:9,id:pumpkin_pie,Count:2},{Slot:10,id:pumpkin_pie,Count:2},{Slot:11,id:pumpkin_pie,Count:2},{Slot:12,id:pumpkin_pie,Count:2},{Slot:13,id:pumpkin_pie,Count:2},{Slot:18,id:pumpkin_pie,Count:3},{Slot:19,id:cake,Count:1}]} replace
#glasgow - clothes shop
summon item_frame -2649 66 -34957 {Tags:[shop],Facing:5,Item:{id:leather_helmet,Count:1}}
setblock -2653 64 -34958 air
setblock -2653 64 -34958 chest[facing=south]{Items:[{Slot:0,id:leather_helmet,Count:1,tag:{display:{Name:'{"text":"Traffic Cone Hat"}',color:16351261}}}]} replace
summon armor_stand -2652 64 -34958 {Tags:[shop],ArmorItems:[{id:golden_boots,Count:1},{id:netherite_leggings,Count:1},{id:diamond_chestplate,Count:1},{id:leather_helmet,Count:1}]}
#glasgow - butcher shop
summon item_frame -2649 65 -34953 {Tags:[shop],Facing:5,Item:{id:mutton,Count:1}}
setblock -2651 63 -34954 air
setblock -2651 63 -34954 chest[facing=south]{Items:[{Slot:0,id:cooked_mutton,Count:7},{Slot:1,id:cooked_beef,Count:16},{Slot:2,id:cooked_porkchop,Count:11},{Slot:9,id:cooked_chicken,Count:5}]} replace
#glasgow - book shop
summon item_frame -2649 65 -34949 {Tags:[shop],Facing:5,Item:{id:writable_book,Count:1}}
setblock -2651 63 -34950 air
setblock -2651 63 -34950 chest[facing=south]{Items:[{Slot:0,id:writable_book,Count:1}]} replace
#glasgow - bakery
summon item_frame -2649 65 -34945 {Tags:[shop],Facing:5,Item:{id:bread,Count:1}}
setblock -2651 63 -349546 air
setblock -2651 63 -349546 chest[facing=south]{Items:[{Slot:0,id:cake,Count:1},{Slot:1,id:cake,Count:1},{Slot:2,id:cake,Count:1},{Slot:3,id:cookie,Count:22},{Slot:4,id:pumpkin_pie,Count:7},{Slot:9,id:honey_bottle,Count:1},{Slot:18,id:bread,Count:57}]} replace
#glasgow - science centre cafe
setblock -21 64 -32 air
setblock -21 64 -32 chest[facing=east]{Items:[{Slot:0,id:mushroom_stew,Count:1},{Slot:1,id:mushroom_stew,Count:1},{Slot:3,id:beetroot_soup,Count:1},{Slot:2,id:mushroom_stew,Count:1},{Slot:4,id:beetroot_soup,Count:1},{Slot:5,id:beetroot_soup,Count:1},{Slot:6,id:beetroot_soup,Count:1},{Slot:7,id:beetroot_soup,Count:1},{Slot:9,id:bread,Count:43},{Slot:18,id:cookie,Count:4},{Slot:19,id:cookie,Count:3},{Slot:20,id:cookie,Count:2}]} replace
#inverness - Overgate:fishmonger
setblock -2654 63 -35962 air
setblock -2654 63 -35962 chest[facing=north]{Items:[{Slot:0,id:tropical_fish,Count:1},{Slot:1,id:pufferfish,Count:3},{Slot:9,id:cod,Count:47},{Slot:10,id:salmon,Count:18},{Slot:18,id:fishing_rod,Count:1}]} replace
#inverness - Overgate:book shop
setblock -2654 63 -35956 air
setblock -2654 63 -35956 chest[facing=west]{Items:[{Slot:0,id:book,Count:8},{Slot:1,id:book,Count:3},{Slot:2,id:book,Count:6},{Slot:3,id:book,Count:2},{Slot:4,id:book,Count:3},{Slot:5,id:book,Count:11},{Slot:6,id:book,Count:7},{Slot:9,id:book,Count:3},{Slot:10,id:book,Count:2},{Slot:11,id:book,Count:3},{Slot:12,id:book,Count:5},{Slot:13,id:book,Count:3},{Slot:14,id:book,Count:2},{Slot:19,id:book,Count:3},{Slot:20,id:book,Count:2},{Slot:21,id:book,Count:1}]}
#inverness - Overgate:cafe
setblock -2658 63 -35956 air
setblock -2658 63 -35956 chest[facing=west]{Items:[{Slot:0,id:cookie,Count:38},{Slot:1,id:bread,Count:57},{Slot:9,id:mushroom_stew,Count:1},{Slot:10,id:mushroom_stew,Count:1},{Slot:11,id:mushroom_stew,Count:1},{Slot:12,id:mushroom_stew,Count:1},{Slot:13,id:mushroom_stew,Count:1},{Slot:18,id:cake,Count:1}]}
#tobermory - castle
summon armor_stand -3831 75 -35427 {Rotation:[180.0f],Tags:[shop],ArmorItems:[{id:iron_boots,Count:1},{id:iron_leggings,Count:1},{id:iron_chestplate,Count:1},{id:iron_helmet,Count:1}]}
summon armor_stand -3831 83 -35432 {Rotation:[0.0f],Tags:[shop],ArmorItems:[{id:leather_boots,Count:1,tag:{display:{color:15961002}}},{id:leather_leggings,Count:1,tag:{display:{color:15961002}}},{id:leather_chestplate,Count:1,tag:{display:{color:15961002}}},{id:leather_helmet,Count:1,tag:{display:{color:15961002}}}]}
setblock -3828 83 -35428 air
setblock -3828 83 -35428 chest[facing=north]{Items:[{Slot:0,id:redstone,Count:5},{Slot:1,id:hopper,Count:1},{Slot:2,id:daylight_detector,Count:1},{Slot:9,id:anvil,Count:1},{Slot:10,id:chain,Count:3},{Slot:18,id:potion,Count:1,tag:{Potion:"minecraft:water"}},{Slot:25,id:stonecutter,Count:1},{Slot:26,id:smithing_table,Count:1}]}
#tobermory - cafe
summon item_frame -3790 66 -35433 {Tags:[shop],Facing:2,Item:{id:cake,Count:1}}
setblock -3787 64 -35431 air
setblock -3787 64 -35431 chest[facing=west]{Items:[{Slot:0,id:cookie,Count:5},{Slot:1,id:cookie,Count:13},{Slot:2,id:cookie,Count:11},{Slot:9,id:cake,Count:1},{Slot:10,id:cake,Count:1},{Slot:11,id:cake,Count:1},{Slot:13,id:pumpkin_pie,Count:1},{Slot:14,id:pumpkin_pie,Count:1},{Slot:15,id:pumpkin_pie,Count:1},{Slot:16,id:pumpkin_pie,Count:1},{Slot:17,id:pumpkin_pie,Count:1},{Slot:19,id:honey_bottle,Count:1},{Slot:20,id:honey_bottle,Count:1},{Slot:21,id:honey_bottle,Count:1},{Slot:22,id:honey_bottle,Count:1}]}
summon item_frame -3787 66 -35430 {Tags:[shop],Facing:4,Item:{id:cookie,Count:1}}
summon item_frame -3787 66 -35429 {Tags:[shop],Facing:4,Item:{id:cake,Count:1}}
summon item_frame -3787 65 -35430 {Tags:[shop],Facing:4,Item:{id:honey_bottle,Count:1}}
summon item_frame -3787 65 -35429 {Tags:[shop],Facing:4,Item:{id:pumpkin_pie,Count:1}}
#tobermory - fishmonger
summon item_frame -3779 66 -35432 {Tags:[shop],Facing:2,Item:{id:salmon,Count:1}}
setblock -3778 64 -35428 air
setblock -3778 64 -35428 chest[facing=west]{Items:[{Slot:0,id:salmon,Count:5},{Slot:1,id:cod,Count:13},{Slot:8,id:dried_kelp,Count:11},{Slot:9,id:cooked_salmon,Count:6},{Slot:10,id:cooked_cod,Count:17},{Slot:18,id:baked_potato,Count:18}]}
#tobermory - market
summon item_frame -3783 66 -35432 {Tags:[shop],Facing:2,Item:{id:carrot,Count:1}}
summon item_frame -3782 65 -35428 {Tags:[shop],Facing:2,Item:{id:carrot,Count:1}}
setblock -3782 64 -35428 air
setblock -3782 64 -35428 chest[facing=north]{Items:[{Slot:0,id:carrot,Count:27},{Slot:1,id:potato,Count:23},{Slot:2,id:beetroot,Count:9}]}
summon item_frame -3783 65 -35428 {Tags:[shop],Facing:2,Item:{id:apple,Count:1}}
setblock -3783 64 -35428 air
setblock -3783 64 -35428 chest[facing=north]{Items:[{Slot:0,id:apple,Count:12},{Slot:1,id:golden_apple,Count:1},{Slot:9,id:pumpkin,Count:2},{Slot:10,id:melon_slice,Count:15},{Slot:18,id:sweet_berries,Count:31}]}
summon item_frame -3784 65 -35428 {Tags:[shop],Facing:2,Item:{id:bread,Count:1}}
setblock -3784 64 -35428 air
setblock -3784 64 -35428 chest[facing=north]{Items:[{Slot:0,id:bread,Count:45}]}
summon item_frame -3785 65 -35428 {Tags:[shop],Facing:2,Item:{id:porkchop,Count:1}}
setblock -3785 64 -35428 air
setblock -3785 64 -35428 chest[facing=north]{Items:[{Slot:0,id:porkchop,Count:11},{Slot:1,id:beef,Count:7},{Slot:2,id:chicken,Count:14},{Slot:3,id:rabbit,Count:3},{Slot:4,id:mutton,Count:6}]}
#evolution room
setblock -2616 74 -35593 air
setblock -2616 74 -35593 chest[facing=east]{Items:[{Slot:0,id:filled_map,tag:{map:124},Count:1},{Slot:1,id:filled_map,tag:{map:125},Count:1},{Slot:2,id:filled_map,tag:{map:126},Count:1},{Slot:3,id:filled_map,tag:{map:127},Count:1},{Slot:5,id:filled_map,tag:{map:136},Count:1},{Slot:6,id:filled_map,tag:{map:137},Count:1},{Slot:7,id:filled_map,tag:{map:138},Count:1},{Slot:8,id:filled_map,tag:{map:139},Count:1},{Slot:9,id:filled_map,tag:{map:128},Count:1},{Slot:10,id:filled_map,tag:{map:129},Count:1},{Slot:11,id:filled_map,tag:{map:130},Count:1},{Slot:12,id:filled_map,tag:{map:131},Count:1},{Slot:14,id:filled_map,tag:{map:140},Count:1},{Slot:15,id:filled_map,tag:{map:141},Count:1},{Slot:16,id:filled_map,tag:{map:142},Count:1},{Slot:17,id:filled_map,tag:{map:143},Count:1},{Slot:18,id:filled_map,tag:{map:120},Count:1},{Slot:19,id:filled_map,tag:{map:121},Count:1},{Slot:20,id:filled_map,tag:{map:122},Count:1},{Slot:21,id:filled_map,tag:{map:123},Count:1},{Slot:23,id:filled_map,tag:{map:144},Count:1},{Slot:24,id:filled_map,tag:{map:145},Count:1},{Slot:25,id:filled_map,tag:{map:146},Count:1},{Slot:26,id:filled_map,tag:{map:147},Count:1}]}