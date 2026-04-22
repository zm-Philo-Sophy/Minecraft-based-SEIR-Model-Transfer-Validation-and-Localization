#assign low
#IgA 20-80, IgG 500-600

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

execute as @s run scoreboard players operation @s bell_iga = @s bell


######## STEP-1: three independent draws from the range
execute store result score @s random run random value 500..600
execute store result score @s random2 run random value 500..600
execute store result score @s bell run random value 500..600
#
######## STEP-2: Add all together
scoreboard players operation @s bell += @s random
scoreboard players operation @s bell += @s random2
#
######## STEP-3: Divide by 3 to get final result
scoreboard players operation @s bell /= #three const

execute as @s run scoreboard players operation @s bell_igg = @s bell
