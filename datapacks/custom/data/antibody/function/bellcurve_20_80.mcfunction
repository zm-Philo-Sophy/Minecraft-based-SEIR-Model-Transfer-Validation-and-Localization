######## STEP-1: three independent draws from the range
execute store result score @s random run random value 20..80
execute store result score @s random2 run random value 20..80
execute store result score @s bell run random value 20..80
#
######## STEP-2: Add all together
scoreboard players operation @s bell += @s random
scoreboard players operation @s bell += @s random2
#
######## STEP-3: Divide by 3 to get final result
scoreboard players operation @s bell /= #three const
#
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=susceptible] at @s run scoreboard players operation @s bell_iga = @s bell
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=exposed_glas] at @s run scoreboard players operation @s bell_iga = @s bell
execute as @e[type=villager,sort=nearest,limit=1,tag=dead,tag=glas] at @s run scoreboard players operation @s bell_iga = @s bell