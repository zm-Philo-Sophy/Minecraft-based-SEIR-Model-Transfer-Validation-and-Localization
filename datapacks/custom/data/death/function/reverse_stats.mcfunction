#input data onto the back of each gravestone depending on location
function death:dead_stats

#Edinburgh - Number infected
execute if entity @s[tag=infectious_edin] run data modify block ~ ~ ~ back_text.messages[0] set value '{"text":"# Infected: ","color":"gold"}'
execute if entity @s[tag=infectious_edin] run data modify block ~ ~ ~ back_text.messages[1] set value '{"text":"","color":"white","extra":[{"score":{"name":"$temp_edin","objective":"temp_stat"}}]}'

#Glasgow - Immunology
execute if entity @s[tag=infectious_glas] run data modify block ~ ~ ~ back_text.messages[0] set value '{"text":"IgM: ","color":"red","extra":[{"score":{"name":"@e[type=villager,tag=dead,limit=1,sort=nearest]","objective":"bell_igm"}},{"text":" mg/dL","color":"gray"}]}'
execute if entity @s[tag=infectious_glas] run data modify block ~ ~ ~ back_text.messages[1] set value '{"text":"IgG: ","color":"red","extra":[{"score":{"name":"@e[type=villager,tag=dead,limit=1,sort=nearest]","objective":"bell_igg"}},{"text":" mg/dL","color":"gray"}]}'
execute if entity @s[tag=infectious_glas] run data modify block ~ ~ ~ back_text.messages[2] set value '{"text":"IgA: ","color":"red","extra":[{"score":{"name":"@e[type=villager,tag=dead,limit=1,sort=nearest]","objective":"bell_iga"}},{"text":" mg/dL","color":"gray"}]}'

#Dundee - Haematology
#wbc
execute if entity @s[tag=infectious_dund] if score @e[type=villager,tag=dead,limit=1,sort=nearest] wbc_decimal < decimal const run data modify block ~ ~ ~ back_text.messages[0] set value '{"text":"WBC:  ","color":"red","extra":[{"score":{"name":"@e[type=villager,tag=dead,limit=1,sort=nearest]","objective":"wbc_main"}},{"text":".0"},{"score":{"name":"@e[type=villager,tag=dead,limit=1,sort=nearest]","objective":"wbc_decimal"}},{"text":" x10^9/L","color":"gray"}]}'
execute if entity @s[tag=infectious_dund] if score @e[type=villager,tag=dead,limit=1,sort=nearest] wbc_decimal >= decimal const run data modify block ~ ~ ~ back_text.messages[0] set value '{"text":"WBC:  ","color":"red","extra":[{"score":{"name":"@e[type=villager,tag=dead,limit=1,sort=nearest]","objective":"wbc_main"}},{"text":"."},{"score":{"name":"@e[type=villager,tag=dead,limit=1,sort=nearest]","objective":"wbc_decimal"}},{"text":" x10^9/L","color":"gray"}]}'
#hb
execute if entity @s[tag=infectious_dund] if score @e[type=villager,tag=dead,limit=1,sort=nearest] hb_decimal < decimal const run data modify block ~ ~ ~ back_text.messages[1] set value '{"text":"Hb:  ","color":"red","extra":[{"score":{"name":"@e[type=villager,tag=dead,limit=1,sort=nearest]","objective":"hb_main"}},{"text":".0"},{"score":{"name":"@e[type=villager,tag=dead,limit=1,sort=nearest]","objective":"hb_decimal"}},{"text":" g/dL","color":"gray"}]}'
execute if entity @s[tag=infectious_dund] if score @e[type=villager,tag=dead,limit=1,sort=nearest] hb_decimal >= decimal const run data modify block ~ ~ ~ back_text.messages[1] set value '{"text":"Hb:  ","color":"red","extra":[{"score":{"name":"@e[type=villager,tag=dead,limit=1,sort=nearest]","objective":"hb_main"}},{"text":"."},{"score":{"name":"@e[type=villager,tag=dead,limit=1,sort=nearest]","objective":"hb_decimal"}},{"text":" g/dL","color":"gray"}]}'
#plt
execute if entity @s[tag=infectious_dund] run data modify block ~ ~ ~ back_text.messages[2] set value '{"text":"PLT: ","color":"red","extra":[{"score":{"name":"@e[type=villager,tag=dead,limit=1,sort=nearest]","objective":"bell_plt"}},{"text":" x10^9/L","color":"gray"}]}'

#Kirkaldy - immunocompromised
execute if entity @s[tag=infectious_fife] if entity @s[tag=immunocompromised] run data modify block ~ ~ ~ back_text.messages[0] set value '{"text":"Immuno-","color":"gold"}'
execute if entity @s[tag=infectious_fife] if entity @s[tag=immunocompromised] run data modify block ~ ~ ~ back_text.messages[1] set value '{"text":"compromised","color":"gold"}'

#Inverness - Hygiene
execute if entity @s[tag=infectious_inve] run data modify block ~ ~ ~ back_text.messages[0] set value '{"text":"Handwashing: ","color":"red","extra":[{"score":{"name":"@e[type=villager,tag=dead,limit=1,sort=nearest]","objective":"wash"}},{"text":" per day","color":"gray"}]}'
execute if entity @s[tag=infectious_inve] run data modify block ~ ~ ~ back_text.messages[1] set value '{"text":"Last Lunch:","color":"red"},{"text":" "},{"text":"Pie"}'
execute if entity @s[tag=infectious_inve] run data modify block ~ ~ ~ back_text.messages[2] set value '{"text":"Found:","color":"red"},{"text":" "},{"text":"On toilet"}'


#OPTIONAL EDITS
#immunocompromised indicators for Edin and Glasgow
execute if entity @s[tag=infectious_edin] if entity @s[tag=immunocompromised] run data modify block ~ ~ ~ back_text.messages[3] set value '{"text":"IC","color":"gold"}'
execute if entity @s[tag=infectious_glas] if entity @s[tag=immunocompromised] run data modify block ~ ~ ~ back_text.messages[3] set value '{"text":"IC","color":"gold"}'