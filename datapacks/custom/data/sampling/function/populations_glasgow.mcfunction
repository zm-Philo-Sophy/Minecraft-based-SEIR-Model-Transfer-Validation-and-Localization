#Total number of villagers
execute store result score glasgow Population run execute if entity @e[type=villager,tag=glas]
#count susceptible villagers
execute store result score glasgow Healthy_Count run execute if entity @e[type=villager,tag=glas,tag=susceptible]
#count exposed villagers
execute store result score glasgow Exposed_Count run execute if entity @e[type=villager,tag=exposed_glas]
# Count infected villagers
execute store result score glasgow Sick_Count run execute if entity @e[type=villager,tag=infectious_glas]
#count recovered villagers
execute store result score glasgow Recovered_Count run execute if entity @e[type=villager,tag=recovered_glas]


#Glasgow
#Population, Healthy_Count, Exposed_Count, Sick_Count, Recovered_Count
#this will run every time point set by the throttle function (default will be 1 second)

tellraw @p [{"text":"Population: ","color":"yellow"},{"score":{"name":"glasgow","objective":"Population"},"color":"white"},{"text":"Susceptible: ","color":"yellow"},{"score":{"name":"glasgow","objective":"Healthy_Count"},"color":"white"},{"text":"Exposed: ","color":"yellow"},{"score":{"name":"glasgow","objective":"Exposed_Count"},"color":"white"},{"text":"Infected: ","color":"yellow"},{"score":{"name":"glasgow","objective":"Sick_Count"},"color":"white"},{"text":"Recovered: ","color":"yellow"},{"score":{"name":"glasgow","objective":"Recovered_Count"},"color":"white"},{"text":"Dead: ","color":"yellow"},{"score":{"name":"glasgow","objective":"Death_Count"},"color":"white"}]
