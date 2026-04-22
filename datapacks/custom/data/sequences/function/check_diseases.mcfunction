# check_diseases.mcfunction
# Check all diseases a villager might have (multiple can trigger)

# Salmonella check
execute if entity @s[tag=has_salmonella] unless entity @s[tag=data_given] run loot spawn ~ ~ ~ loot sequences:villager/salmonella

# Commensals check  
execute if entity @s[tag=has_commensals] unless entity @s[tag=data_given] run loot spawn ~ ~1 ~ loot sequences:villager/commensals

# RV check
execute if entity @s[tag=has_rv] unless entity @s[tag=data_given] run loot spawn ~ ~2 ~ loot sequences:villager/rv

# Influenza check
execute if entity @s[tag=has_influenza] unless entity @s[tag=data_given] run loot spawn ~ ~2 ~ loot sequences:villager/influenza

# Vibrio check
execute if entity @s[tag=has_vibrio] unless entity @s[tag=data_given] run loot spawn ~ ~2 ~ loot sequences:villager/vibrio

# Mark as processed
tag @s add data_given

#Give output to indicate data collected
#tellraw @a [{"text":"===== Sequence Collected =====", "color":"gold", "bold":true}]
#tellraw @a ["Villager ID: ",{"score":{"name":"@s","objective":"VillagerID"}}]