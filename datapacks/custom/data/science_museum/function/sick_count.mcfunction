#execute as @e[type=villager,tag=infectious_dund] at @s run scoreboard players add dundee Sick_Count 1
#execute as @e[type=villager,tag=infectious_edin] at @s run scoreboard players add edinburgh Sick_Count 1
#execute as @e[type=villager,tag=infectious_fife] at @s run scoreboard players add kirkaldy Sick_Count 1
#execute as @e[type=villager,tag=infectious_glas] at @s run scoreboard players add glasgow Sick_Count 1
#execute as @e[type=villager,tag=infectious_inve] at @s run scoreboard players add inverness Sick_Count 1
# Count infected villagers
execute store result score dundee Sick_Count run execute if entity @e[type=villager,tag=infectious_dund]
execute store result score edinburgh Sick_Count run execute if entity @e[type=villager,tag=infectious_edin]
execute store result score kirkaldy Sick_Count run execute if entity @e[type=villager,tag=infectious_fife]
execute store result score glasgow Sick_Count run execute if entity @e[type=villager,tag=infectious_glas]
execute store result score inverness Sick_Count run execute if entity @e[type=villager,tag=infectious_inve]
data modify block -23 78 -18 front_text.messages[2] set value {"score":{"name":"dundee","objective":"Sick_Count"}}
data modify block -23 78 -19 front_text.messages[2] set value {"score":{"name":"edinburgh","objective":"Sick_Count"}}
data modify block -23 78 -20 front_text.messages[2] set value {"score":{"name":"kirkaldy","objective":"Sick_Count"}}
data modify block -23 78 -21 front_text.messages[2] set value {"score":{"name":"glasgow","objective":"Sick_Count"}}
data modify block -23 78 -22 front_text.messages[2] set value {"score":{"name":"inverness","objective":"Sick_Count"}}
#scoreboard players set dundee Sick_Count 0
#scoreboard players set edinburgh Sick_Count 0
#scoreboard players set kirkaldy Sick_Count 0
#scoreboard players set glasgow Sick_Count 0
#scoreboard players set inverness Sick_Count 0