execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=susceptible,tag=glas] at @s run function antibody:bellcurve_500_600
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=exposed_glas] at @s run function antibody:bellcurve_500_600
#execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_glas] at @s run function antibody:bellcurve_750_900
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=recovered_glas] at @s run function antibody:bellcurve_1000_1250

