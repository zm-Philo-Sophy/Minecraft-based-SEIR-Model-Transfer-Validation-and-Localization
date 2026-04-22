#removes immunocompromised status from villagers
execute as @e[type=villager] at @s if entity @s[tag=immunocompromised] run effect clear @s minecraft:bad_omen
execute as @e[type=villager] at @s if entity @s[tag=immunocompromised] run tag @s remove immunocompromised