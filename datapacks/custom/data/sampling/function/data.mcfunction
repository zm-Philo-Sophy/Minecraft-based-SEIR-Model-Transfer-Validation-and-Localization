#symptoms default
data modify storage sampling:tmp fever set value ""
data modify storage sampling:tmp diarrhea set value ""

#give symptoms if they exist
execute as @e[type=villager,sort=nearest,limit=1,distance=..3] if entity @s[tag=fever] run data modify storage sampling:tmp fever set value "Fever"
execute as @e[type=villager,sort=nearest,limit=1,distance=..3] if entity @s[tag=diarrhea] run data modify storage sampling:tmp diarrhea set value "Diarrhea"

#Debug
#tellraw @a {"text":"Debug: fever=","color":"yellow","extra":[{"nbt":"fever","storage":"sampling:tmp","interpret":true},{"text":", diarrhea="},{"nbt":"diarrhea","storage":"sampling:tmp","interpret":true}]}

#tell player sex and age information for Kirkaldy
execute as @e[type=villager,sort=nearest,limit=1,distance=..3] at @s if entity @s[tag=female] run tellraw @p ["",{"text":"Sex: Female, ","color":"red"},{"text":"Age: ","color":"gold"},{"score":{"name":"@s","objective":"Age"},"color":"gold"},{"text":" | ID: ","color":"white"},{"score":{"name":"@s","objective":"VillagerID"},"color":"white"}]
execute as @e[type=villager,sort=nearest,limit=1,distance=..3] at @s if entity @s[tag=male] run tellraw @p ["",{"text":"Sex: Male, ","color":"red"},{"text":"Age: ","color":"gold"},{"score":{"name":"@s","objective":"Age"},"color":"gold"},{"text":" | ID: ","color":"white"},{"score":{"name":"@s","objective":"VillagerID"},"color":"white"}]

#tell player Villager ID for all other locations
#execute as @e[type=villager,sort=nearest,limit=1,distance=..3] at @s unless entity @s[tag=fife] run tellraw @p ["",{"text":" Villager ID: ","color":"gold"},{"score":{"name":"@s","objective":"VillagerID"},"color":"white"}]

#tell player individual R value if villager is infected or recovered
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_edin] at @s run tellraw @p ["",{"text":" Number Infected: ","color":"gold"},{"score":{"name":"@s","objective":"r_number_edin"},"color":"white"}]


#have villager speak with any inbuilt dialogue
execute as @e[type=villager,sort=nearest,limit=1,distance=..3] at @s run function sampling:dialogue

#have villager give sequence data of different microbial species depending on subsequent coding
execute as @e[type=villager,sort=nearest,limit=1,distance=..3] at @s run function sequences:check_diseases

#have villager give antibody titres to player based on their state
execute as @e[type=villager,sort=nearest,limit=1,distance=..3] at @s run function antibody:antibody

#have villager give haematology stats to player based on their state
execute as @e[type=villager,sort=nearest,limit=1,distance=..3] at @s run function haematology:haematology

#have villager give hygiene stats to player based on their state
execute as @e[type=villager,sort=nearest,limit=1,distance=..3] at @s run function hygiene:hygiene

#have villager show symptoms to player if present
execute as @e[type=villager,sort=nearest,limit=1,distance=..3] run function sampling:symptoms



