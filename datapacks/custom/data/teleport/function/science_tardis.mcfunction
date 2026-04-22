#if players step on the right block they get teleported between glasgow and tardis centre
execute as @e[type=villager,x=-17,y=64,z=-9,distance=..2] at @s if block ~ ~-1 ~ sea_lantern run tp @s ~0.1 ~ ~
execute as @e[type=player,x=-17,y=64,z=-9,distance=..2] at @s if block ~ ~-1 ~ sea_lantern run tp @s -2670 63 -34910.0 270 0
execute as @e[type=player,x=-2671,y=63,z=-34911,distance=..2] at @s if block ~ ~-1 ~ sea_lantern run tp @s -17.0 64 -10 180 0