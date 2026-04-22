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

# 80% influenza (10-89)
execute if score @s microorganism matches 10..89 run tag @s add has_influenza
execute if score @s microorganism matches 10..89 run scoreboard players set @s influenza 1

# 10% RV (90-99) - only if not already set
execute if score @s microorganism matches 90..99 run tag @s add has_rv
execute if score @s microorganism matches 90..99 run scoreboard players set @s rv 1

# Reset other scores (same as above)
execute if entity @s[tag=has_commensals] run scoreboard players set @s salmonella 0
execute if entity @s[tag=has_commensals] run scoreboard players set @s influenza 0
execute if entity @s[tag=has_commensals] run scoreboard players set @s rv 0

execute if entity @s[tag=has_salmonella] run scoreboard players set @s influenza 0
execute if entity @s[tag=has_salmonella] run scoreboard players set @s commensals 0
execute if entity @s[tag=has_salmonella] run scoreboard players set @s rv 0

execute if entity @s[tag=has_rv] run scoreboard players set @s salmonella 0
execute if entity @s[tag=has_rv] run scoreboard players set @s influenza 0
execute if entity @s[tag=has_rv] run scoreboard players set @s commensals 0

execute if entity @s[tag=has_influenza] run scoreboard players set @s salmonella 0
execute if entity @s[tag=has_influenza] run scoreboard players set @s commensals 0
execute if entity @s[tag=has_influenza] run scoreboard players set @s rv 0


# Salmonella check
execute if entity @s[tag=has_salmonella] unless entity @s[tag=data_given] run loot insert -2585 64 -34949 loot sequences:villager/salmonella

# Commensals check  
execute if entity @s[tag=has_commensals] unless entity @s[tag=data_given] run loot insert -2585 64 -34949 loot sequences:villager/commensals

# RV check
execute if entity @s[tag=has_rv] unless entity @s[tag=data_given] run loot insert -2585 64 -34949 loot sequences:villager/rv

# Influenza check
execute if entity @s[tag=has_influenza] unless entity @s[tag=data_given] run loot insert -2585 64 -34949 loot sequences:villager/influenza

# Vibrio check
execute if entity @s[tag=has_vibrio] unless entity @s[tag=data_given] run loot insert -2585 64 -34949 loot sequences:villager/vibrio

# Mark as processed
tag @s add data_given