######## STEP-1: three independent draws from the range
execute store result score @s random run random value 1000..1250
execute store result score @s random2 run random value 1000..1250
execute store result score @s bell run random value 1000..1250
#
######## STEP-2: Add all together
scoreboard players operation @s bell += @s random
scoreboard players operation @s bell += @s random2
#
######## STEP-3: Divide by 3 to get final result
scoreboard players operation @s bell /= #three const
#
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=recovered_glas] at @s run scoreboard players operation @s bell_igg = @s bell
