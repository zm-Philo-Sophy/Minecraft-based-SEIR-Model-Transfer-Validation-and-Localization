#vaccinates villagers to a given percentage on spawn based on predicate
#gives them a different look to differentiate.
data modify entity @s VillagerData.type set value snow
tag @s remove susceptible
tag @s add vaccinated