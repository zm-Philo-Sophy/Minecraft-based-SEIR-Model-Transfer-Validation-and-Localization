#Total number of villagers
execute store result score edinburgh Population run execute if entity @e[type=villager,tag=edin]

#count susceptible villagers
execute store result score edinburgh Healthy_Count run execute if entity @e[type=villager,tag=edin,tag=susceptible]

#count exposed villagers
execute store result score edinburgh Exposed_Count run execute if entity @e[type=villager,tag=exposed_edin]

# Count infected villagers
execute store result score edinburgh Sick_Count run execute if entity @e[type=villager,tag=infectious_edin]

#count recovered villagers
execute store result score edinburgh Recovered_Count run execute if entity @e[type=villager,tag=recovered_edin]


#Edinburgh
#Population, Healthy_Count, Exposed_Count, Sick_Count, Recovered_Count
#this will run every time point set by the throttle function (default will be 1 second)

tellraw @p [{"text":"Population: ","color":"yellow"},{"score":{"name":"edinburgh","objective":"Population"},"color":"white"},{"text":" Susceptible: ","color":"yellow"},{"score":{"name":"edinburgh","objective":"Healthy_Count"},"color":"white"},{"text":" Exposed: ","color":"yellow"},{"score":{"name":"edinburgh","objective":"Exposed_Count"},"color":"white"},{"text":" Infected: ","color":"yellow"},{"score":{"name":"edinburgh","objective":"Sick_Count"},"color":"white"},{"text":" Recovered: ","color":"yellow"},{"score":{"name":"edinburgh","objective":"Recovered_Count"},"color":"white"},{"text":" Dead: ","color":"yellow"},{"score":{"name":"edinburgh","objective":"Death_Count"},"color":"white"}]