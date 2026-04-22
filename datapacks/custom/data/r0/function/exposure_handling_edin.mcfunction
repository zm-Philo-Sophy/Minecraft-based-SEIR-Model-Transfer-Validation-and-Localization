# 1. Tag the villager as exposed
tag @s add exposed_edin

# 2. Find and count on the nearest infectious villager
execute at @s as @e[type=villager,tag=infectious_edin,limit=1,sort=nearest] run scoreboard players add @s r_number_edin 1

#3. Record 
#total number of people infected over time
#execute at @s as @e[type=villager,tag=infectious_edin,limit=1,sort=nearest] run scoreboard players operation R_holder r_number_edin += @s r_number_edin
#execute at @s as @e[type=villager,tag=infectious_edin,limit=1,sort=nearest] run scoreboard players operation R_holder r_total += @s r_number_edin
execute at @s as @e[type=villager,tag=infectious_edin,limit=1,sort=nearest] run scoreboard players add R_holder r_total 1


#4. Tag villager who infected
execute at @s as @e[type=villager,tag=infectious_edin,limit=1,sort=nearest] run tag @s add infected_others

#5. Record the score of how many villagers have infected others (so survives death)
execute as @e[type=villager,tag=infected_others,tag=edin,limit=1,sort=nearest] at @s unless score @s infection_counted matches 1 run scoreboard players add edinburgh total_infected_others 1
execute as @e[type=villager,tag=infected_others,tag=edin,limit=1,sort=nearest] at @s unless score @s infection_counted matches 1 run scoreboard players set @s infection_counted 1
