#this is activated when everything resets
#remove all armour stands and scoreboards
kill @e[type=armor_stand,tag=gravedigger]
scoreboard objectives remove X
scoreboard objectives remove Y 
#place new armor stands in starting location for each graveyard
summon armor_stand -1858 66 -35370 {Tags:[gravedigger,dundee],Invisible:1b}
summon armor_stand -2055 65 -34996 {Tags:[gravedigger,edinburgh],Invisible:1b}
summon armor_stand -2000 65 -35124 {Tags:[gravedigger,fife],Invisible:1b}
summon armor_stand -2602 64 -34958 {Tags:[gravedigger,glasgow],Invisible:1b}
summon armor_stand -2652 63 -35967 {Tags:[gravedigger,inverness],Invisible:1b}
summon armor_stand -3788 67 -35418 {Tags:[gravedigger,tobermory],Invisible:1b}
#at each armour stand remove old gravestones and "graveyard full" signs
execute as @e[type=armor_stand,tag=dundee] at @s run fill ~ ~ ~ ~8 ~ ~-6 air replace minecraft:dark_oak_sign
execute as @e[type=armor_stand,tag=dundee] at @s run fill ~ ~ ~ ~8 ~ ~-6 air replace minecraft:crimson_sign
execute as @e[type=armor_stand,tag=dundee] at @s run setblock -1855 67 -35367 air replace
execute as @e[type=armor_stand,tag=edinburgh] at @s run fill ~ ~ ~ ~-8 ~ ~-10 air replace minecraft:dark_oak_sign
execute as @e[type=armor_stand,tag=edinburgh] at @s run fill ~ ~ ~ ~-8 ~ ~-10 air replace minecraft:crimson_sign
execute as @e[type=armor_stand,tag=edinburgh] at @s run setblock -2053 66 -35005 air replace
execute as @e[type=armor_stand,tag=edinburgh] at @s run setblock -2059 66 -34993 air replace
execute as @e[type=armor_stand,tag=fife] at @s run fill ~ ~ ~ ~6 ~ ~-8 air replace minecraft:dark_oak_sign
execute as @e[type=armor_stand,tag=fife] at @s run fill ~ ~ ~ ~6 ~ ~-8 air replace minecraft:crimson_sign
execute as @e[type=armor_stand,tag=fife] at @s run setblock -1995 66 -35128 air replace
execute as @e[type=armor_stand,tag=glasgow] at @s run fill ~ ~ ~ ~16 ~ ~15 air replace minecraft:dark_oak_sign
execute as @e[type=armor_stand,tag=glasgow] at @s run fill ~ ~ ~ ~16 ~ ~15 air replace minecraft:crimson_sign
execute as @e[type=armor_stand,tag=glasgow] at @s run setblock -2606 65 -34949 air replace
execute as @e[type=armor_stand,tag=glasgow] at @s run setblock -2585 64 -34950 air replace
execute as @e[type=armor_stand,tag=inverness] at @s run fill ~ ~ ~ ~-9 ~ ~-5 air replace minecraft:dark_oak_sign
execute as @e[type=armor_stand,tag=inverness] at @s run fill ~ ~ ~ ~-9 ~ ~-5 air replace minecraft:crimson_sign
execute as @e[type=armor_stand,tag=inverness] at @s run setblock -2656 64 -35972 air replace
execute as @e[type=armor_stand,tag=tobermory] at @s run fill ~ ~ ~ ~8 ~ ~6 air replace minecraft:dark_oak_sign
execute as @e[type=armor_stand,tag=tobermory] at @s run fill ~ ~ ~ ~8 ~ ~6 air replace minecraft:crimson_sign
execute as @e[type=armor_stand,tag=tobermory] at @s run setblock -3791 67 -35412 air replace
execute as @e[type=armor_stand,tag=tobermory] at @s run setblock -3778 67 -35420 air replace
#replace scoreboards and set maximum dimensions of each graveyard
scoreboard objectives add X dummy
scoreboard players set X_dundee X 8
scoreboard players set X_edinburgh X -7
scoreboard players set X_fife X 4
scoreboard players set X_glasgow X 12
scoreboard players set X_inverness X -9
scoreboard players set X_tobermory X 8
scoreboard objectives add Y dummy
scoreboard players set Y_dundee Y -6
scoreboard players set Y_edinburgh Y -8
scoreboard players set Y_fife Y -6
scoreboard players set Y_glasgow Y 13
scoreboard players set Y_inverness Y -5
scoreboard players set Y_tobermory Y 6
#set scores for position of each armour stand to 0
execute as @e[type=armor_stand,tag=gravedigger] run scoreboard players set @s X 0
execute as @e[type=armor_stand,tag=gravedigger] run scoreboard players set @s Y 0