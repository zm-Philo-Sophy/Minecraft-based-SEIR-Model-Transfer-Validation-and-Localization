#when villagers die they activate the nearest armour stand to follow this list of functions
#each graveyard is unique in size,shape and orientation so armour stand moves differently depending on city tag
#all cities are the same, see comments in Dundee for reference
#dundee
#teleport one to the side, position for next gravestone
execute if entity @s[tag=dundee] run tp ~1 ~ ~
#log this by adding 1 to the score for that direction
execute if entity @s[tag=dundee] run scoreboard players add @s X 1
#if score exceeds maximum score, meaning the stand is now beyond edge of graveyard, move to beginning of next row
execute if entity @s[tag=dundee] if score @s X > X_dundee X run tp ~-8 ~ ~-1
#if moved to next row, log this by changing the score in that direction, and resettiing the other position score to 0
execute if entity @s[tag=dundee] if score @s X > X_dundee X run scoreboard players remove @s Y 1
execute if entity @s[tag=dundee] if score @s X > X_dundee X run scoreboard players set @s X 0
#if exceeded maximum distance for both scores, place a sign saying graveyard is full, then delete self
execute if entity @s[tag=dundee] if score @s Y < Y_dundee Y run setblock -1855 67 -35367 dark_oak_wall_sign[facing=south]{front_text:{messages:['""','{"text":"GRAVEYARD","color":"red"}','{"text":"FULL","color":"red"}','""']}} keep
execute if entity @s[tag=dundee] if score @s Y < Y_dundee Y run kill @s
#edinburgh
execute if entity @s[tag=edinburgh] run tp ~ ~ ~-1
execute if entity @s[tag=edinburgh] run scoreboard players remove @s Y 1
execute if entity @s[tag=edinburgh] if score @s Y < Y_edinburgh Y run tp ~-1 ~ ~8
execute if entity @s[tag=edinburgh] if score @s Y < Y_edinburgh Y run scoreboard players remove @s X 1
execute if entity @s[tag=edinburgh] if score @s Y < Y_edinburgh Y run scoreboard players set @s Y 0
execute if entity @s[tag=edinburgh] if score @s X < X_edinburgh X run setblock -2053 66 -35005 dark_oak_wall_sign[facing=south]{front_text:{messages:['""','{"text":"GRAVEYARD","color":"red"}','{"text":"FULL","color":"red"}','""']}} keep
execute if entity @s[tag=edinburgh] if score @s X < X_edinburgh X run setblock -2059 66 -34993 dark_oak_wall_sign[facing=south]{front_text:{messages:['""','{"text":"GRAVEYARD","color":"red"}','{"text":"FULL","color":"red"}','""']}} keep
execute if entity @s[tag=edinburgh] if score @s X < X_edinburgh X run kill @s
#fife
execute if entity @s[tag=fife] run tp ~1 ~ ~
execute if entity @s[tag=fife] run scoreboard players add @s X 1
execute if entity @s[tag=fife] if score @s X > X_fife X run tp ~-4 ~ ~-1
execute if entity @s[tag=fife] if score @s X > X_fife X run scoreboard players remove @s Y 1
execute if entity @s[tag=fife] if score @s X > X_fife X run scoreboard players set @s X 0
execute if entity @s[tag=fife] if score @s Y < Y_fife Y run setblock -1995 66 -35128 dark_oak_wall_sign[facing=west]{front_text:{messages:['""','{"text":"GRAVEYARD","color":"red"}','{"text":"FULL","color":"red"}','""']}} keep
execute if entity @s[tag=fife] if score @s Y < Y_fife Y run kill @s
#glasgow
execute if entity @s[tag=glasgow] run tp ~ ~ ~1
execute if entity @s[tag=glasgow] run scoreboard players add @s Y 1
execute if entity @s[tag=glasgow] if score @s Y > Y_glasgow Y run tp ~1 ~ ~-13
execute if entity @s[tag=glasgow] if score @s Y > Y_glasgow Y run scoreboard players add @s X 1
execute if entity @s[tag=glasgow] if score @s Y > Y_glasgow Y run scoreboard players set @s Y 0
execute if entity @s[tag=glasgow] if score @s X > X_glasgow X run setblock -2606 65 -34949 dark_oak_wall_sign[facing=west]{front_text:{messages:['""','{"text":"GRAVEYARD","color":"red"}','{"text":"FULL","color":"red"}','""']}} keep
execute if entity @s[tag=glasgow] if score @s X > X_glasgow X run setblock -2585 64 -34950 dark_oak_sign[rotation=4]{front_text:{messages:['""','{"text":"GRAVEYARD","color":"red"}','{"text":"FULL","color":"red"}','""']}} keep
execute if entity @s[tag=glasgow] if score @s X > X_glasgow X run kill @s
#inverness
execute if entity @s[tag=inverness] run tp ~ ~ ~-1
execute if entity @s[tag=inverness] run scoreboard players remove @s Y 1
execute if entity @s[tag=inverness] if score @s Y < Y_inverness Y run tp ~-1 ~ ~5
execute if entity @s[tag=inverness] if score @s Y < Y_inverness Y run scoreboard players remove @s X 1
execute if entity @s[tag=inverness] if score @s Y < Y_inverness Y run scoreboard players set @s Y 0
execute if entity @s[tag=inverness] if score @s X < X_inverness X run setblock -2656 64 -35972 dark_oak_wall_sign[facing=south]{front_text:{messages:['""','{"text":"GRAVEYARD","color":"red"}','{"text":"FULL","color":"red"}','""']}} keep
execute if entity @s[tag=inverness] if score @s X < X_inverness X run kill @s
#tobermory
execute if entity @s[tag=tobermory] run tp ~ ~ ~1
execute if entity @s[tag=tobermory] run scoreboard players add @s Y 1
execute if entity @s[tag=tobermory] if score @s Y > Y_tobermory Y run tp ~1 ~ ~-6
execute if entity @s[tag=tobermory] if score @s Y > Y_tobermory Y run scoreboard players add @s X 1
execute if entity @s[tag=tobermory] if score @s Y > Y_tobermory Y run scoreboard players set @s Y 0
execute if entity @s[tag=tobermory] if score @s X > X_tobermory X run setblock -3791 67 -35412 dark_oak_sign[rotation=5]{front_text:{messages:['""','{"text":"GRAVEYARD","color":"red"}','{"text":"FULL","color":"red"}','""']}} keep
execute if entity @s[tag=tobermory] if score @s X > X_tobermory X run setblock -3778 67 -35420 dark_oak_sign[rotation=8]{front_text:{messages:['""','{"text":"GRAVEYARD","color":"red"}','{"text":"FULL","color":"red"}','""']}} keep
execute if entity @s[tag=tobermory] if score @s X > X_tobermory X run kill @s
