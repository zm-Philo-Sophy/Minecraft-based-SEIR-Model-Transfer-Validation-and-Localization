#Quarantine System
#Check for sick villagers in clusters
execute as @e[type=villager,tag=infectious_edin,tag=!quarantined] at @s store result score @s cluster_size run execute if entity @e[type=villager,distance=..2]
execute as @e[type=villager,tag=infectious_glas,tag=!quarantined] at @s store result score @s cluster_size run execute if entity @e[type=villager,distance=..2]

#If cluster ≥ 4, quarantine them
execute as @e[type=villager,tag=infectious_edin,scores={cluster_size=4..}] run function quarantine:quarantine_villager
execute as @e[type=villager,tag=infectious_glas,scores={cluster_size=4..}] run function quarantine:quarantine_villager

#Check quarantined villagers for recovery
execute as @e[type=villager,tag=quarantined,tag=recovered_edin] run function quarantine:release_villager
execute as @e[type=villager,tag=quarantined,tag=recovered_glas] run function quarantine:release_villager