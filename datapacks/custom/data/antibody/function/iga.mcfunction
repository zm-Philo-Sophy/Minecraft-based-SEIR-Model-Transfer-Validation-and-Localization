execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=susceptible,tag=glas] at @s run function antibody:bellcurve_20_80
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=exposed_glas] at @s run function antibody:bellcurve_20_80
#execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_glas] at @s run function antibody:bellcurve_120_140
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=recovered_glas] at @s run function antibody:bellcurve_80_100