#store R value of villager
execute as @e[type=villager,tag=dead,tag=infectious_edin,limit=1,sort=nearest] run scoreboard players operation $temp_edin temp_stat = @s r_number_edin
#when activated by dead villager, place a sign orientated depending on city
execute if entity @s[tag=infectious_dund] as @e[type=armor_stand,tag=gravedigger,limit=1,sort=nearest,distance=..80] at @s run setblock ~ ~ ~ dark_oak_sign[rotation=0]{front_text:{messages:['{"text":"R.I.P.","color":"white"}','{"text":"Villager","color":"white"}','""','""']}} keep 
execute if entity @s[tag=infectious_edin] as @e[type=armor_stand,tag=gravedigger,limit=1,sort=nearest,distance=..80] at @s run setblock ~ ~ ~ dark_oak_sign[rotation=12]{front_text:{messages:['{"text":"R.I.P.","color":"white"}','{"text":"Villager","color":"white"}','""','""']}} keep
execute if entity @s[tag=infectious_fife] as @e[type=armor_stand,tag=gravedigger,limit=1,sort=nearest,distance=..80] at @s run setblock ~ ~ ~ dark_oak_sign[rotation=0]{front_text:{messages:['{"text":"R.I.P.","color":"white"}','{"text":"Villager","color":"white"}','""','""']}} keep
execute if entity @s[tag=infectious_glas] as @e[type=armor_stand,tag=gravedigger,limit=1,sort=nearest,distance=..80] at @s run setblock ~ ~ ~ dark_oak_sign[rotation=4]{front_text:{messages:['{"text":"R.I.P.","color":"white"}','{"text":"Villager","color":"white"}','""','""']}} keep
execute if entity @s[tag=infectious_inve] as @e[type=armor_stand,tag=gravedigger,limit=1,sort=nearest,distance=..80] at @s run setblock ~ ~ ~ dark_oak_sign[rotation=12]{front_text:{messages:['{"text":"R.I.P.","color":"white"}','{"text":"Villager","color":"white"}','""','""']}} keep
execute if entity @s[tag=infectious_tobe] as @e[type=armor_stand,tag=gravedigger,limit=1,sort=nearest,distance=..80] at @s run setblock ~ ~ ~ dark_oak_sign[rotation=4]{front_text:{messages:['{"text":"R.I.P.","color":"white"}','{"text":"Villager","color":"white"}','""','""']}} keep
#add sex based on sex of villager
execute if entity @s[tag=male] as @e[type=armor_stand,tag=gravedigger,limit=1,sort=nearest,distance=..80] at @s run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"Sex: M","color":"white"}'
execute if entity @s[tag=female] as @e[type=armor_stand,tag=gravedigger,limit=1,sort=nearest,distance=..80] at @s run data modify block ~ ~ ~ front_text.messages[2] set value '{"text":"Sex: F","color":"white"}'
#add villager ID to track deaths with other data?
execute as @e[type=armor_stand,tag=gravedigger,limit=1,sort=nearest,distance=..80] at @s run data modify block ~ ~ ~ front_text.messages[1] set value '{"text":"Villager  ","color":"white","extra":[{"score":{"name":"@e[type=villager,tag=dead,limit=1,sort=nearest]","objective":"VillagerID"}}]}'
#add age based on dead villager age score
execute at @e[type=minecraft:armor_stand,tag=gravedigger,limit=1,sort=nearest,distance=..80] run function death:write_age
#run function to add data to back of sign
execute at @e[type=minecraft:armor_stand,tag=gravedigger,limit=1,sort=nearest,distance=..80] run function death:reverse_stats
#run function to move armour stand to correct location for next gravestone
execute as @e[type=armor_stand,tag=gravedigger,limit=1,sort=nearest,distance=..80] at @s run function death:buried
#log the death
execute if entity @s[tag=infectious_edin] run scoreboard players add edinburgh Death_Count 1
execute if entity @s[tag=infectious_dund] run scoreboard players add dundee Death_Count 1
execute if entity @s[tag=infectious_glas] run scoreboard players add glasgow Death_Count 1
execute if entity @s[tag=infectious_fife] run scoreboard players add kirkaldy Death_Count 1
execute if entity @s[tag=infectious_inve] run scoreboard players add inverness Death_Count 1
execute if entity @s[tag=infectious_tobe] run scoreboard players add tobemory Death_Count 1
#kill the dead villager
kill @s
