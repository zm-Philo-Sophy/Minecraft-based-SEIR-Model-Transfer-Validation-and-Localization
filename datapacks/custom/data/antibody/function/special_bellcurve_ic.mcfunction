#special_bellcurve_ic
#Sets IgM, then sets IgG and IgA based on the result. Skips the IgG and IgA standard way of being calculated.

######## STEP-1: three independent draws from the range
execute store result score @s random run random value 20..120
execute store result score @s random2 run random value 20..120
execute store result score @s bell run random value 20..120
#
######## STEP-2: Add all together
scoreboard players operation @s bell += @s random
scoreboard players operation @s bell += @s random2
#
######## STEP-3: Divide by 3 to get final result
scoreboard players operation @s bell /= #three const
#
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_glas] at @s run scoreboard players operation @s bell_igm = @s bell


# Low IgM (20-120): IgA 20-80, IgG 500-600
execute as @s if score @s bell_igm matches 20..120 run function antibody:assign_antibodies_low