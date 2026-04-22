# Tells the player what state the villager was when the sample was collected
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{VillagerTags:[susceptible]}] run tellraw @s [{"text":"[SUSCEPTIBLE]\n","color":"gold"}]
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{VillagerTags:[exposed_edin]}] run tellraw @s [{"text":"[EXPOSED]\n","color":"gold"}]
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{VillagerTags:[infectious_edin]}] run tellraw @s [{"text":"[INFECTIOUS]\n","color":"gold"}]
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{VillagerTags:[recovered_edin]}] run tellraw @s [{"text":"[RECOVERED]\n","color":"gold"}]
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{VillagerTags:[dead]}] run tellraw @s [{"text":"[DEAD]\n","color":"gold"}]
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{VillagerTags:[susceptible]}] run item modify entity @s weapon.mainhand {function:"minecraft:set_lore",entity:"this",lore:["Susceptible"],mode:"replace_all"}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{VillagerTags:[exposed_edin]}] run item modify entity @s weapon.mainhand {function:"minecraft:set_lore",entity:"this",lore:["Exposed"],mode:"replace_all"}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{VillagerTags:[infectious_edin]}] run item modify entity @s weapon.mainhand {function:"minecraft:set_lore",entity:"this",lore:["Infected"],mode:"replace_all"}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{VillagerTags:[recovered_edin]}] run item modify entity @s weapon.mainhand {function:"minecraft:set_lore",entity:"this",lore:["Recovered"],mode:"replace_all"}
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{VillagerTags:[dead]}] run item modify entity @s weapon.mainhand {function:"minecraft:set_lore",entity:"this",lore:["Dead"],mode:"replace_all"}

#execute if items entity @s weapon.mainhand *[components~{minecraft:custom_data:{data:{VillagerTags:["exposed_edin"]}}}] run say [EXPOSED]
#execute if items entity @s weapon.mainhand *[components~{minecraft:custom_data:{data:{VillagerTags:["infectious_edin"]}}}] run say [INFECTIOUS]
#execute if items entity @s weapon.mainhand *[components~{minecraft:custom_data:{data:{VillagerTags:["recovered_edin"]}}}] run say [RECOVERED]


#check dead bug edinburgh