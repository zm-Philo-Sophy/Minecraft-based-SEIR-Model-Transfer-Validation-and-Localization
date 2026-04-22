# Clear old tags
tag @s remove has_salmonella
tag @s remove has_commensals
tag @s remove has_rv
tag @s remove has_influenza
tag @s remove has_vibrio
tag @s remove data_given


# Recovered distribution: 70% commensals, 0% salmonella, 30% RV for I&I 3
# Recovered distribution: 70% commensals, 0% vibrio, 30% RV for IN3 EDINBURGH
execute store result score @s microorganism run random value 0..99

# 70% commensals (0-69)
execute if score @s microorganism matches 0..69 run tag @s add has_commensals
execute if score @s microorganism matches 0..69 run scoreboard players set @s commensals 1

# 30% RV (70-99) - only if not already set as commensals
execute if score @s microorganism matches 70..99 run tag @s add has_rv
execute if score @s microorganism matches 70..99 run scoreboard players set @s rv 1

# Reset other scores
execute if entity @s[tag=has_commensals] run scoreboard players set @s salmonella 0
execute if entity @s[tag=has_commensals] run scoreboard players set @s vibrio 0
execute if entity @s[tag=has_commensals] run scoreboard players set @s rv 0

execute if entity @s[tag=has_rv] run scoreboard players set @s salmonella 0
execute if entity @s[tag=has_rv] run scoreboard players set @s vibrio 0
execute if entity @s[tag=has_rv] run scoreboard players set @s commensals 0

execute if entity @s[tag=has_vibrio] run scoreboard players set @s salmonella 0
execute if entity @s[tag=has_vibrio] run scoreboard players set @s commensals 0
execute if entity @s[tag=has_vibrio] run scoreboard players set @s rv 0