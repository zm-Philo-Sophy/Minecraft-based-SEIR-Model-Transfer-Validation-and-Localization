# Clear old tags
tag @s remove has_salmonella
tag @s remove has_commensals
tag @s remove has_rv
tag @s remove has_influenza
tag @s remove has_vibrio
tag @s remove data_given

# Exposed distribution: 60% commensals, 10% salmonella, 30% RV for I&I3
# Exposed distribution: 60% commensals, 10% vibrio, 30% RV for IN3 EDINBURGH
execute store result score @s microorganism run random value 0..99

# 60% commensals (0-59)
execute if score @s microorganism matches 0..59 run tag @s add has_commensals
execute if score @s microorganism matches 0..59 run scoreboard players set @s commensals 1

# 10% salmonella (60-69)
#execute if score @s microorganism matches 60..69 run tag @s add has_salmonella
#execute if score @s microorganism matches 60..69 run scoreboard players set @s salmonella 1

# 10% vibrio (60-69)
execute if score @s microorganism matches 60..69 run tag @s add has_vibrio
execute if score @s microorganism matches 60..69 run scoreboard players set @s vibrio 1

# 30% RV (70-99) - only if not already set
execute if score @s microorganism matches 70..99 run tag @s add has_rv
execute if score @s microorganism matches 70..99 run scoreboard players set @s rv 1

# Reset other scores
execute if entity @s[tag=has_commensals] run scoreboard players set @s salmonella 0
execute if entity @s[tag=has_commensals] run scoreboard players set @s vibrio 0
execute if entity @s[tag=has_commensals] run scoreboard players set @s rv 0

execute if entity @s[tag=has_salmonella] run scoreboard players set @s commensals 0
execute if entity @s[tag=has_salmonella] run scoreboard players set @s vibrio 0
execute if entity @s[tag=has_salmonella] run scoreboard players set @s rv 0

execute if entity @s[tag=has_rv] run scoreboard players set @s salmonella 0
execute if entity @s[tag=has_rv] run scoreboard players set @s vibrio 0
execute if entity @s[tag=has_rv] run scoreboard players set @s commensals 0

execute if entity @s[tag=has_vibrio] run scoreboard players set @s commensals 0
execute if entity @s[tag=has_vibrio] run scoreboard players set @s salmonella 0
execute if entity @s[tag=has_vibrio] run scoreboard players set @s rv 0