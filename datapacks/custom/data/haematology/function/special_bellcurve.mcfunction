#main value calculator
#just use random, I don't think needs to be full sample x 3 and divide setup
execute store result score @s wbc_main run random value 1..4
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
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=dund] at @s run scoreboard players operation @s wbc_decimal = @s bell

#1 - 1.99 is low, then 5 - 6.99 for hb, 15 - 20 for PLT
execute as @s if score @s wbc_main matches 1 run function haematology:assign_haem_low


#2 - 2.99 is mid, then 7 - 10 for hb, 21 - 50 for PLT
execute as @s if score @s wbc_main matches 2 run function haematology:assign_haem_mid


#3 - 4.99 is high, so 10 - 13 for hb, 51 - 150 for PLT
execute as @s if score @s wbc_main matches 3..4 run function haematology:assign_haem_high
