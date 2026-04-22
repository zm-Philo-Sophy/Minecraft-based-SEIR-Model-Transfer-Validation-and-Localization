execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=susceptible,tag=inve] at @s run function hygiene:toilet
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=exposed_inve] at @s run function hygiene:toilet_pit
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_inve] at @s run function hygiene:toilet_pit
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=recovered_inve] at @s run function hygiene:toilet