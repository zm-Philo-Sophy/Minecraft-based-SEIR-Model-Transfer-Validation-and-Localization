#Hb functions
#main value calculator
#just use random, I don't think needs to be full sample x 3 and divide setup
execute store result score @s hb_main run random value 13..15
#
#decimal calculator
#benefits from dividing 3 runs like with the antibodies
######## STEP-1: three independent draws from the range
execute store result score @s random run random value 1..99
execute store result score @s random2 run random value 1..99
execute store result score @s bell run random value 1..99
#
######## STEP-2: Add all together
scoreboard players operation @s bell += @s random
scoreboard players operation @s bell += @s random2
#
######## STEP-3: Divide by 3 to get final result
scoreboard players operation @s bell /= #three const
#
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=dund] at @s run scoreboard players operation @s hb_decimal = @s bell