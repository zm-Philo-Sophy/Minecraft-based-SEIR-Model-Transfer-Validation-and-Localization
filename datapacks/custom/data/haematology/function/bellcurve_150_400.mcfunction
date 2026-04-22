######## STEP-1: three independent draws from the range
execute store result score @s random run random value 150..400
execute store result score @s random2 run random value 150..400
execute store result score @s bell run random value 150..400
#
######## STEP-2: Add all together
scoreboard players operation @s bell += @s random
scoreboard players operation @s bell += @s random2
#
######## STEP-3: Divide by 3 to get final result
scoreboard players operation @s bell /= #three const
#
scoreboard players operation @s bell_plt = @s bell