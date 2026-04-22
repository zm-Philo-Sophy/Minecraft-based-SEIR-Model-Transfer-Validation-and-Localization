#tell player sex and age information
execute as @e[type=villager,sort=nearest,limit=1,distance=..3] at @s if entity @s[tag=female] if score @s Age < 80s Age run tellraw @p ["",{"text":"Sex: Female, ","color":"red"},{"text":"Age: ","color":"gold"},{"score":{"name":"@s","objective":"Age"},"color":"gold"},{"text":"0-","color":"gold"},{"score":{"name":"@s","objective":"Age"},"color":"gold"},{"text":"9","color":"gold"}]
execute as @e[type=villager,sort=nearest,limit=1,distance=..3] at @s if entity @s[tag=male] if score @s Age < 80s Age run tellraw @p ["",{"text":"Sex: Male, ","color":"aqua"},{"text":"Age: ","color":"gold"},{"score":{"name":"@s","objective":"Age"},"color":"gold"},{"text":"0-","color":"gold"},{"score":{"name":"@s","objective":"Age"},"color":"gold"},{"text":"9","color":"gold"}]
execute as @e[type=villager,sort=nearest,limit=1,distance=..3] at @s if entity @s[tag=female] if score @s Age = 80s Age run tellraw @p ["",{"text":"Sex: Female, ","color":"red"},{"text":"Age: ","color":"gold"},{"score":{"name":"@s","objective":"Age"},"color":"gold"},{"text":"0+","color":"gold"}]
execute as @e[type=villager,sort=nearest,limit=1,distance=..3] at @s if entity @s[tag=male] if score @s Age = 80s Age run tellraw @p ["",{"text":"Sex: Male, ","color":"aqua"},{"text":"Age: ","color":"gold"},{"score":{"name":"@s","objective":"Age"},"color":"gold"},{"text":"0+","color":"gold"}]
#assign which sample individual gives (5 is none) 
execute as @e[type=villager,sort=nearest,limit=1,distance=..3] at @s if score @s Map = zero Map if predicate sampling:map_chance run scoreboard players set @s Map 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3] at @s if score @s Map = zero Map if predicate sampling:map_chance run scoreboard players set @s Map 2
execute as @e[type=villager,sort=nearest,limit=1,distance=..3] at @s if score @s Map = zero Map if predicate sampling:map_chance run scoreboard players set @s Map 3
execute as @e[type=villager,sort=nearest,limit=1,distance=..3] at @s if score @s Map = zero Map if predicate sampling:map_chance run scoreboard players set @s Map 4
execute as @e[type=villager,sort=nearest,limit=1,distance=..3] at @s if score @s Map = zero Map run scoreboard players set @s Map 5
#give sample to player
#dundee
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_dund] at @s if score @s Map = one Map run give @p filled_map[minecraft:map_id=124] 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_dund] at @s if score @s Map = two Map run give @p filled_map[minecraft:map_id=125] 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_dund] at @s if score @s Map = three Map run give @p filled_map[minecraft:map_id=126] 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_dund] at @s if score @s Map = four Map run give @p filled_map[minecraft:map_id=127] 1
#edinburgh
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_edin] at @s if score @s Map = one Map run give @p filled_map[minecraft:map_id=136] 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_edin] at @s if score @s Map = two Map run give @p filled_map[minecraft:map_id=137] 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_edin] at @s if score @s Map = three Map run give @p filled_map[minecraft:map_id=138] 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_edin] at @s if score @s Map = four Map run give @p filled_map[minecraft:map_id=139] 1
#fife
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_fife] at @s if score @s Map = one Map run give @p filled_map[minecraft:map_id=128] 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_fife] at @s if score @s Map = two Map run give @p filled_map[minecraft:map_id=129] 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_fife] at @s if score @s Map = three Map run give @p filled_map[minecraft:map_id=130] 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_fife] at @s if score @s Map = four Map run give @p filled_map[minecraft:map_id=131] 1
#glasgow
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_glas] at @s if score @s Map = one Map run give @p filled_map[minecraft:map_id=140] 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_glas] at @s if score @s Map = two Map run give @p filled_map[minecraft:map_id=141] 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_glas] at @s if score @s Map = three Map run give @p filled_map[minecraft:map_id=142] 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_glas] at @s if score @s Map = four Map run give @p filled_map[minecraft:map_id=143] 1
#inverness
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_inve] at @s if score @s Map = one Map run give @p filled_map[minecraft:map_id=120] 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_inve] at @s if score @s Map = two Map run give @p filled_map[minecraft:map_id=121] 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_inve] at @s if score @s Map = three Map run give @p filled_map[minecraft:map_id=122] 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_inve] at @s if score @s Map = four Map run give @p filled_map[minecraft:map_id=123] 1
#tobermory
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_tobe] at @s if score @s Map = one Map run give @p filled_map[minecraft:map_id=144] 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_tobe] at @s if score @s Map = two Map run give @p filled_map[minecraft:map_id=145] 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_tobe] at @s if score @s Map = three Map run give @p filled_map[minecraft:map_id=146] 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_tobe] at @s if score @s Map = four Map run give @p filled_map[minecraft:map_id=147] 1
#have villager speak with any inbuilt dialogue
execute as @e[type=villager,sort=nearest,limit=1,distance=..3] at @s run function sampling:dialogue
