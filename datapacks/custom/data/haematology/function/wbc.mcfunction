#WBC Count
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=susceptible,tag=dund] at @s run function haematology:wbc_4_11
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=exposed_dund] at @s run function haematology:wbc_2_4
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_dund] at @s run function haematology:special_bellcurve
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=recovered_dund] at @s run function haematology:wbc_5_10