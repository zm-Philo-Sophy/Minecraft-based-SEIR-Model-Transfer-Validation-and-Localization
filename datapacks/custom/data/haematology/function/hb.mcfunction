#Hb Count
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=susceptible,tag=dund] at @s run function haematology:hb_13_15
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=exposed_dund] at @s run function haematology:hb_10_13
#execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_dund] at @s run function haematology:hb_10_13
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=recovered_dund] at @s run function haematology:hb_13_15