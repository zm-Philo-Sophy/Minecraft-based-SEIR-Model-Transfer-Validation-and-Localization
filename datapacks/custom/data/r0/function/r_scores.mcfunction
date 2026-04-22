#add infected numbers of all villagers together, and somehow average this value, so on average how many people are infected by an infected person

#Store the number of villagers who have infected others, regardless of current status
execute store result score edinburgh infected_others run execute if entity @e[type=villager,tag=infected_others,tag=edin]
execute store result score glasgow infected_others run execute if entity @e[type=villager,tag=infected_others,tag=glas]
execute store result score fife infected_others run execute if entity @e[type=villager,tag=infected_others,tag=fife]
execute store result score dundee infected_others run execute if entity @e[type=villager,tag=infected_others,tag=dund]
execute store result score inverness infected_others run execute if entity @e[type=villager,tag=infected_others,tag=inve]

#store the highest value of r_number_edin for any single villager
execute as @e[type=villager] if score @s r_number_edin > #high r_number_edin_highest run scoreboard players operation #high r_number_edin_highest = @s r_number_edin
execute as @e[type=villager] if score @s r_number_glas > #high r_number_glas_highest run scoreboard players operation #high r_number_glas_highest = @s r_number_glas
execute as @e[type=villager] if score @s r_number_fife > #high r_number_fife_highest run scoreboard players operation #high r_number_fife_highest = @s r_number_fife
execute as @e[type=villager] if score @s r_number_dund > #high r_number_dund_highest run scoreboard players operation #high r_number_dund_highest = @s r_number_dund
execute as @e[type=villager] if score @s r_number_inve > #high r_number_inve_highest run scoreboard players operation #high r_number_inve_highest = @s r_number_inve


#store the total number of villagers who have infected others, including the dead ones



