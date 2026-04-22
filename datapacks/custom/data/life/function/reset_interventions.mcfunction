#Resets all interventions and outputs to check changed

#add source back to Glasgow
execute positioned -2612.6507073827765 63.0 -34941.200916085494 run kill @e[type=armor_stand,distance=0..1]
summon armor_stand -2612.6507073827765 63.0 -34941.200916085494 {Tags:[source,source_glas],Invisible:1b}
execute positioned -2612.6507073827765 63.0 -34941.200916085494 if entity @e[type=armor_stand,distance=..2] run tellraw @p ["", {"text": "Stores Open", "color": "gold"}]

#Add sources back to Edinburgh
execute positioned -2052 61 -34998 run kill @e[type=armor_stand,distance=0..1]
summon armor_stand -2052 61 -34998 {Tags:[source,source_edin],Invisible:1b}

execute positioned -2011 65 -34990 run kill @e[type=armor_stand,distance=0..1]
summon armor_stand -2011 65 -34990 {Tags:[source,source_edin],Invisible:1b}

execute positioned -2052 61 -34998 if entity @e[type=armor_stand,distance=..2] run tellraw @p ["", {"text": "Water Pumps Activated", "color": "gold"}]

#reset vaccination status to zero
scoreboard players set @p vaccine 0
execute if score @p vaccine matches 0 run tellraw @p ["", {"text": "Vaccination Stopped", "color": "blue"}]

#turn off quarantine of sick social villagers
setblock -4 79 -6 air destroy
execute if block -4 79 -6 air run tellraw @p ["", {"text": "Hospital Quarantine Lifted", "color": "dark_aqua"}]

#reinstate immunocompromised summon in life:start
scoreboard players set immunocompromised quarantine 0
execute if score immunocompromised quarantine matches 0 run tellraw @p ["", {"text": "Quarantine Lifted", "color": "light_purple"}]

#reset the signs
data modify block -2569 33 -34970 front_text.messages[3] set value '{"text":"OFF","color":"red"}'
data modify block -2567 33 -34970 front_text.messages[3] set value '{"text":"OFF","color":"red"}'
data modify block -2565 33 -34970 front_text.messages[3] set value '{"text":"OFF","color":"red"}'
data modify block -2563 33 -34970 front_text.messages[3] set value '{"text":"OFF","color":"red"}'
data modify block -2560 33 -34970 front_text.messages[3] set value '{"text":"OFF","color":"red"}'
data modify block -2558 33 -34970 front_text.messages[3] set value '{"text":"OFF","color":"red"}'

#Edinburgh
data modify block -2050 1 -35032 front_text.messages[3] set value '{"text":"OFF","color":"red"}'
data modify block -2050 1 -35034 front_text.messages[3] set value '{"text":"OFF","color":"red"}'
data modify block -2050 1 -35037 front_text.messages[3] set value '{"text":"OFF","color":"red"}'
data modify block -2050 1 -35039 front_text.messages[3] set value '{"text":"OFF","color":"red"}'
data modify block -2050 1 -35042 front_text.messages[3] set value '{"text":"OFF","color":"red"}'
data modify block -2050 1 -35044 front_text.messages[3] set value '{"text":"OFF","color":"red"}'