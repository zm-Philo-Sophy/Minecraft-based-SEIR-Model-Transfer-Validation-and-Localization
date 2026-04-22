#summon villager
summon villager ~ ~1 ~ {Tags:[susceptible]}
#tell villager to setup demographic data
execute as @e[type=villager,limit=1,sort=nearest] at @s run function life:demography
#replace bed
setblock ~-1 ~ ~ minecraft:red_bed[part=head,facing=west] keep
setblock ~ ~ ~ minecraft:red_bed[part=foot,facing=west] replace