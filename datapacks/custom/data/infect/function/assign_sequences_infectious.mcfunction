# Clear old tags
tag @s remove has_salmonella
tag @s remove has_commensals
tag @s remove has_rv
tag @s remove has_influenza
tag @s remove has_vibrio
tag @s remove data_given

# Sick distribution: 10% commensals, 80% salmonella, 10% RV for I&I3
# Sick distribution: 10% commensals, 80% vibrio, 10% RV for IN3 EDINBURGH
execute store result score @s microorganism run random value 0..99

# 10% commensals (0-9)
execute if score @s microorganism matches 0..9 run tag @s add has_commensals
execute if score @s microorganism matches 0..9 run scoreboard players set @s commensals 1

# 80% salmonella (10-89)
#execute if score @s microorganism matches 10..89 run tag @s add has_salmonella
#execute if score @s microorganism matches 10..89 run scoreboard players set @s salmonella 1

# 80% vibrio (10-89)
execute if score @s microorganism matches 10..89 run tag @s add has_vibrio
execute if score @s microorganism matches 10..89 run scoreboard players set @s vibrio 1

# 10% RV (90-99) - only if not already set
execute if score @s microorganism matches 90..99 run tag @s add has_rv
execute if score @s microorganism matches 90..99 run scoreboard players set @s rv 1

# Reset other scores (same as above)
execute if entity @s[tag=has_commensals] run scoreboard players set @s salmonella 0
execute if entity @s[tag=has_commensals] run scoreboard players set @s vibrio 0
execute if entity @s[tag=has_commensals] run scoreboard players set @s rv 0

execute if entity @s[tag=has_salmonella] run scoreboard players set @s vibrio 0
execute if entity @s[tag=has_salmonella] run scoreboard players set @s commensals 0
execute if entity @s[tag=has_salmonella] run scoreboard players set @s rv 0

execute if entity @s[tag=has_rv] run scoreboard players set @s salmonella 0
execute if entity @s[tag=has_rv] run scoreboard players set @s vibrio 0
execute if entity @s[tag=has_rv] run scoreboard players set @s commensals 0

execute if entity @s[tag=has_vibrio] run scoreboard players set @s salmonella 0
execute if entity @s[tag=has_vibrio] run scoreboard players set @s commensals 0
execute if entity @s[tag=has_vibrio] run scoreboard players set @s rv 0