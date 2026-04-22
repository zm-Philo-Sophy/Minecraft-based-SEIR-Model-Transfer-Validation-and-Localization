execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=susceptible,tag=glas] at @s run function antibody:bellcurve_20_120
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=exposed_glas] at @s run function antibody:bellcurve_20_120
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_glas,tag=!immunocompromised] at @s run function antibody:special_bellcurve
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_glas,tag=immunocompromised] at @s if score @s bell_igm matches 0 run function antibody:special_bellcurve_ic
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=recovered_glas] at @s run function antibody:bellcurve_200_250