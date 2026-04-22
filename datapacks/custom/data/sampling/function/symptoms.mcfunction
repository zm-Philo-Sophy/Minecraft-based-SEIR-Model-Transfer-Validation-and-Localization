# Check fever tag
execute if entity @s[tag=fever] run tellraw @a {"text":"✓ Has fever","color":"red"}
execute unless entity @s[tag=fever] run tellraw @a {"text":"✗ NO fever","color":"gray"}
# Check diarrhea tag
execute if entity @s[tag=diarrhea] run tellraw @a {"text":"✓ Has diarrhea\n","color":"aqua"}
execute unless entity @s[tag=diarrhea] run tellraw @a {"text":"✗ NO diarrhea\n","color":"gray"}