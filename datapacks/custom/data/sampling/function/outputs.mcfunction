#makes nearest villager (the one that will be sampled) glow
execute as @e[type=player] at @s run effect give @e[type=villager,sort=nearest,limit=1,distance=..3] minecraft:glowing 1 0 true
#if clicked on will give sampled data
execute as @p[tag=!evolution,scores={Used=1}] at @s run function sampling:data
execute as @p[tag=evolution,scores={Used=1}] at @s run function sampling:data_evolution
#reset score to zero
execute as @p[scores={Used=1}] run scoreboard players set @a Used 0