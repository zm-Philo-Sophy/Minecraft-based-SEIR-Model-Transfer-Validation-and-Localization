#this function is triggered by the reset and creates demographic data for each villager
#50% chance to tag a villager as male
execute if predicate life:sex run tag @s add male
#if not tagged male then tag female
execute if entity @s[tag=!male] run tag @s add female

#create scoreboard to log ages
scoreboard objectives add Age dummy
scoreboard objectives add AgeRoll dummy

#run function to assign age based on Scottish Census Data
execute as @e[type=minecraft:villager] run function life:assign_age_scotland
#generate immunocompromised tag for 10 % of villagers made
execute if predicate life:immunocompromised run tag @s add immunocompromised
execute as @e[type=villager] at @s if entity @s[tag=immunocompromised] run effect give @s minecraft:bad_omen 2000 0 false

#Provide immunity via vaccination if player score is set to specific value
execute as @e[type=villager,limit=1,sort=nearest] at @s if score @p vaccine matches 1 if predicate vaccine:vaccination_chance_high run function vaccine:vaccinate_birth
execute as @e[type=villager,limit=1,sort=nearest,tag=immunocompromised] at @s if score @p vaccine matches 2 run function vaccine:vaccinate_birth
execute as @e[type=villager,limit=1,sort=nearest] at @s if score @p vaccine matches 3 if score @s Age matches 60.. run function vaccine:vaccinate_birth

#setup initial fever and diarrhea status for villager
execute if predicate life:diarrhea run tag @s add diarrhea
execute if predicate life:fever run tag @s add fever

#set up dialogue box for villagers
fill -2 84 -3 -2 84 -3 minecraft:command_block{auto:1,Command:"function life:dialogue"} replace air

#give each villager the right objective for sequencing
scoreboard players set @s DNA_Seq 0
scoreboard players set @s commensals 0
scoreboard players set @s salmonella 0
scoreboard players set @s influenza 0
scoreboard players set @s vibrio 0
scoreboard players set @s rv 0
scoreboard players set @s microorganism 0

#give each villager correct antibody objectives
scoreboard players set @s bell_igm 0
scoreboard players set @s bell_igg 0
scoreboard players set @s bell_iga 0

#give each villager correct haematology objectives
scoreboard players set @s wbc_main 0
scoreboard players set @s wbc_decimal 0
scoreboard players set @s hb_main 0
scoreboard players set @s hb_decimal 0
scoreboard players set @s bell_plt 0

#give each villager correct hygiene objectives
scoreboard players set @s wash 0
scoreboard players set @s food 0
scoreboard players set @s def 0

# Generate unique ID
#scoreboard objectives add VillagerID dummy
#scoreboard objectives add life.global dummy
scoreboard players add #nextVillagerID life.global 1
scoreboard players operation @s VillagerID = #nextVillagerID life.global


#remove immunocompromised if quarantine is turned on
execute if entity @s[tag=immunocompromised] if score immunocompromised quarantine matches 1 run function quarantine:immunocompromised
