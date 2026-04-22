######## STEP-1: three independent draws from the range
execute store result score @s random run random value 20..120
execute store result score @s random2 run random value 20..120
execute store result score @s random3 run random value 20..120

execute store result score @s random4 run random value 500..600
execute store result score @s random5 run random value 500..600
execute store result score @s random6 run random value 500..600

execute store result score @s random7 run random value 20..80
execute store result score @s random8 run random value 20..80
execute store result score @s random9 run random value 20..80
#
######## STEP-2: Add all together
scoreboard players operation @s random3 += @s random
scoreboard players operation @s random3 += @s random2
#
scoreboard players operation @s random6 += @s random4
scoreboard players operation @s random6 += @s random5
#
scoreboard players operation @s random9 += @s random7
scoreboard players operation @s random9 += @s random8
#
######## STEP-3: Divide by 3 to get final result
scoreboard players operation @s random3 /= #three const
scoreboard players operation @s random6 /= #three const
scoreboard players operation @s random9 /= #three const
#
scoreboard players operation @s bell_igm = @s random3
scoreboard players operation @s bell_igg = @s random6
scoreboard players operation @s bell_iga = @s random9