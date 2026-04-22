#Tag as quarantined
tag @s add quarantined

#Store original position
execute store result score @s origX run data get entity @s Pos[0]
execute store result score @s origY run data get entity @s Pos[1]
execute store result score @s origZ run data get entity @s Pos[2]

#Teleport to quarantine
execute if entity @s[tag=edin] run tp @s -1950 66 -34950
#glasgow
execute if entity @s[tag=glas] run tp @s -2613 70 -34873

#Visual effect?
execute at @s run particle minecraft:cloud ~ ~1 ~ 0.5 0.5 0.5 0 10

# Clear the temp score
scoreboard players set @s cluster_size 0