#PLT
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=susceptible,tag=dund] at @s run function haematology:bellcurve_150_400
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=exposed_dund] at @s run function haematology:bellcurve_50_150
#execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_dund] at @s run function haematology:bellcurve_50_150
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=recovered_dund] at @s run function haematology:bellcurve_150_400