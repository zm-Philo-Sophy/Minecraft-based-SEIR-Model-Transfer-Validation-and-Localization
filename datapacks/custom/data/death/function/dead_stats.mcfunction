#assign appropriate stats for all dead villagers dependent on location

#Edinburgh - tricky, let's hold off

#Glasgow run stats if not sampled by player
execute as @e[type=villager,sort=nearest,limit=1,tag=dead,tag=glas] at @s if score @s bell_igm matches 0 run function death:deathcurve_antibody

#Dundee
execute as @e[type=villager,sort=nearest,limit=1,tag=dead,tag=dund] at @s if score @s wbc_main matches 0 run function death:deathcurve_haematology

#Kirkaldy - not needed

#Inverness - not needed