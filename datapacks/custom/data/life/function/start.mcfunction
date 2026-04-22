#kill previous villagers to reset
kill @e[type=villager]
#spawn villagers in, one per bed using other function
function life:start_village
#setup graveyards
function death:grave_reset
#clear player inventory
execute as @a[name=!TroiSoong] at @s run clear
#clear the maps from item frames
tag @e[type=glow_item_frame] remove empty 
#add demographic data
function life:demography
#remove old dialogue setting block
setblock -2 84 -3 air
#set up scoreboard for logging sampler use
scoreboard objectives remove Used
scoreboard objectives add Used minecraft.custom:minecraft.talked_to_villager 
#setup scoreboard to log what map piece each villager can give
scoreboard objectives add Map dummy
#put score in for each map piece
scoreboard players set zero Map 0
scoreboard players set one Map 1
scoreboard players set two Map 2
scoreboard players set three Map 3
scoreboard players set four Map 4
#restore player health
effect give @p minecraft:instant_health 1 0 true
effect give @p minecraft:saturation 20 0 true
#reset death counter
scoreboard players reset * Death_Count
#refill chests
function life:chests
#reset r values
scoreboard players set #high r_number_edin_highest 0
scoreboard players set R_holder r_number_edin 0
scoreboard players set R_holder r_total 0
scoreboard players set #result calc 0
scoreboard players set #high r_number_glas_highest 0
scoreboard players set R_holder r_number_glas 0
scoreboard players set R_holder_glas r_total 0
scoreboard players set * total_infected_others 0