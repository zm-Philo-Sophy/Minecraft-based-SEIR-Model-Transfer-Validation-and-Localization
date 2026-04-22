#Outputs the paper data to the player for follow up
execute as @p run tellraw @a ["", {"text":"VillagerID: ","color":"red"}, {"nbt":"SelectedItem.components.minecraft:custom_name", "entity":"@s", "interpret":true}]
execute as @p run tellraw @a ["", {"text":"Sequence: ","color":"blue"}, {"nbt":"SelectedItem.components.minecraft:custom_data.Sequence", "entity":"@s", "interpret":true}]
execute as @p run tellraw @a ["", {"text":"UUID: ","color":"dark_green"}, {"nbt":"SelectedItem.components.minecraft:custom_data.UUID", "entity":"@s", "interpret":true}]

execute as @p run function sequences:villager_status_output