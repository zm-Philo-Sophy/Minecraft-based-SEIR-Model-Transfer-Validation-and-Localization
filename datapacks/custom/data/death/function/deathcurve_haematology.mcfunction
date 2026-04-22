######## STEP-1: three independent draws from the range
execute store result score @s random run random value 1..99
execute store result score @s random2 run random value 1..99
execute store result score @s bell run random value 1..99
#
execute store result score @s random3 run random value 1..99
execute store result score @s random4 run random value 1..99
execute store result score @s random5 run random value 1..99
#
######## STEP-2: Add all together
scoreboard players operation @s bell += @s random
scoreboard players operation @s bell += @s random2
#
scoreboard players operation @s random5 += @s random3
scoreboard players operation @s random5 += @s random4
#
######## STEP-3: Divide by 3 to get final result
scoreboard players operation @s bell /= #three const
scoreboard players operation @s random5 /= #three const
#
execute store result score @s wbc_main run random value 0..2
execute as @e[type=villager,sort=nearest,limit=1,tag=dead,tag=dund] at @s run scoreboard players operation @s wbc_decimal = @s bell
#
execute store result score @s hb_main run random value 1..7
execute as @e[type=villager,sort=nearest,limit=1,tag=dead,tag=dund] at @s run scoreboard players operation @s hb_decimal = @s random5
#
execute store result score @s bell_plt run random value 1..20
