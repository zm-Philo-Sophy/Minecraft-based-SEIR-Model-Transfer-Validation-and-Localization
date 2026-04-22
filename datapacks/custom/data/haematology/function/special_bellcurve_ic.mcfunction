#main value calculator - for immunocompromised you can only have lower wbc etc values
#just use random, I don't think needs to be full sample x 3 and divide setup
execute store result score @s wbc_main run random value 1..1
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
execute as @s if score @s wbc_main matches 1 run function antibody:assign_haem_low