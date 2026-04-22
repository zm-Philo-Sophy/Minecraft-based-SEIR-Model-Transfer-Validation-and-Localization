# Return to original location
#as @e[type=villager,tag=quarantined,tag=recovered_edin] 
execute store result entity @s Pos[0] double 1 run scoreboard players get @s origX
execute store result entity @s Pos[1] double 1 run scoreboard players get @s origY
execute store result entity @s Pos[2] double 1 run scoreboard players get @s origZ
# Remove quarantine data
tag @s remove quarantined
#Visual Effect?
execute at @s run particle minecraft:cloud ~ ~1 ~ 0.5 0.5 0.5 0 10