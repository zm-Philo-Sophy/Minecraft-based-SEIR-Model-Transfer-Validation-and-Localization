execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=susceptible,tag=inve] at @s run function hygiene:food_home
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=exposed_inve] at @s run function hygiene:food_pie
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_inve] at @s run function hygiene:food_pie
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=recovered_inve] at @s run function hygiene:food_both