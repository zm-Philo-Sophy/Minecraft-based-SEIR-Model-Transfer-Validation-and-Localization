#if players step on the right block they get the tag allowing them to teleport
execute as @e[type=player] at @s if block ~ ~-1 ~ deepslate_diamond_ore run tag @s add dundee
execute as @e[type=player] at @s if block ~ ~-1 ~ deepslate_gold_ore run tag @s add edinburgh
execute as @e[type=player] at @s if block ~ ~-1 ~ deepslate_lapis_ore run tag @s add fife
execute as @e[type=player] at @s if block ~ ~-1 ~ deepslate_redstone_ore run tag @s add glasgow
execute as @e[type=player] at @s if block ~ ~-1 ~ deepslate_copper_ore run tag @s add inverness