#summon villager
summon villager ~ ~1 ~ {Tags:[susceptible]}
#tell villager to setup demogarphic data
execute as @e[type=villager,limit=1,sort=nearest] at @s run function life:demography
#replace bed
setblock ~ ~ ~1 minecraft:magenta_bed[part=head,facing=south] keep
setblock ~ ~ ~ minecraft:magenta_bed[part=foot,facing=south] replace