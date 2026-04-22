#add tag if come into contact with source
#Edinburgh rate varies depending on sex
execute as @e[type=villager,tag=susceptible] at @s if entity @e[tag=source_dund,distance=..2] if predicate infect:exposure_chance_dund run tag @s add exposed_dund
execute as @e[type=villager,tag=susceptible] at @s if entity @s[tag=female] if entity @e[tag=source_edin,distance=..2] if predicate infect:exposure_chance_edin_female run tag @s add exposed_edin
execute as @e[type=villager,tag=susceptible] at @s if entity @s[tag=male] if entity @e[tag=source_edin,distance=..2] if predicate infect:exposure_chance_edin_male run tag @s add exposed_edin
execute as @e[type=villager,tag=susceptible] at @s if entity @e[tag=source_fife,distance=..2] if predicate infect:exposure_chance_fife run tag @s add exposed_fife
execute as @e[type=villager,tag=susceptible] at @s if entity @e[tag=source_glas,distance=..2] if predicate infect:exposure_chance_glas run tag @s add exposed_glas
execute as @e[type=villager,tag=susceptible] at @s if entity @e[tag=source_inve,distance=..2] if predicate infect:exposure_chance_inve run tag @s add exposed_inve
execute as @e[type=villager,tag=susceptible] at @s if entity @e[tag=source_tobe,distance=..2] if predicate infect:exposure_chance_tobe run tag @s add exposed_tobe
#add tag if come into contact with infectious
#Edinburgh rate varies depending on sex
execute as @e[type=villager,tag=susceptible] at @s if entity @e[type=villager,tag=infectious_dund,distance=..2] if predicate infect:exposure_chance_dund run tag @s add exposed_dund
execute as @e[type=villager,tag=susceptible] at @s if entity @s[tag=female] if entity @e[type=villager,tag=infectious_edin,distance=..2] if predicate infect:exposure_chance_edin_female run function r0:exposure_handling_edin
execute as @e[type=villager,tag=susceptible] at @s if entity @s[tag=male] if entity @e[type=villager,tag=infectious_edin,distance=..2] if predicate infect:exposure_chance_edin_male run function r0:exposure_handling_edin
execute as @e[type=villager,tag=susceptible] at @s if entity @e[type=villager,tag=infectious_fife,tag=!immunocompromised,distance=..2] if predicate infect:exposure_chance_fife run tag @s add exposed_fife
execute as @e[type=villager,tag=susceptible] at @s if entity @e[type=villager,tag=infectious_fife,tag=immunocompromised,distance=..2] if predicate infect:exposure_chance_fife_immunocompromised run tag @s add exposed_fife
execute as @e[type=villager,tag=susceptible] at @s if entity @e[type=villager,tag=infectious_glas,distance=..2] if predicate infect:exposure_chance_glas run function r0:exposure_handling_glas
execute as @e[type=villager,tag=susceptible] at @s if entity @e[type=villager,tag=infectious_inve,distance=..2] if predicate infect:exposure_chance_inve run tag @s add exposed_inve
execute as @e[type=villager,tag=susceptible] at @s if entity @e[type=villager,tag=infectious_tobe,distance=..2] if predicate infect:exposure_chance_tobe run tag @s add exposed_tobe
#remove old tags
execute as @e[type=villager,tag=exposed_edin,nbt={VillagerData: {type:"minecraft:plains"}}] run function infect:assign_sequences_exposed
execute as @e[type=villager,tag=exposed_glas,nbt={VillagerData: {type:"minecraft:plains"}}] run function infect:assign_sequences_exposed


tag @e[type=villager,tag=exposed_dund] remove susceptible
tag @e[type=villager,tag=exposed_edin] remove susceptible
tag @e[type=villager,tag=exposed_fife] remove susceptible
tag @e[type=villager,tag=exposed_glas] remove susceptible
tag @e[type=villager,tag=exposed_inve] remove susceptible
tag @e[type=villager,tag=exposed_tobe] remove susceptible
#reset antibody titres for new sample collection (Glasgow)
execute as @e[type=villager,tag=exposed_glas,nbt={VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s bell_igm 0
execute as @e[type=villager,tag=exposed_glas,nbt={VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s bell_igg 0
execute as @e[type=villager,tag=exposed_glas,nbt={VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s bell_iga 0
#reset haematology scores for new sample collection (Dundee)
execute as @e[type=villager,tag=exposed_dund,nbt={VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s wbc_main 0
execute as @e[type=villager,tag=exposed_dund,nbt={VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s wbc_decimal 0
execute as @e[type=villager,tag=exposed_dund,nbt={VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s hb_main 0
execute as @e[type=villager,tag=exposed_dund,nbt={VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s hb_decimal 0
execute as @e[type=villager,tag=exposed_dund,nbt={VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s bell_plt 0
#reset hygiene scores for new sample collection (Inverness)
execute as @e[type=villager,tag=exposed_inve,nbt={VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s wash 0
execute as @e[type=villager,tag=exposed_inve,nbt={VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s food 0
execute as @e[type=villager,tag=exposed_inve,nbt={VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s def 0
#change appearance to indicate exposed stage
execute as @e[type=villager,tag=exposed_dund,nbt={VillagerData: {type:"minecraft:plains"}}] run data modify entity @s VillagerData.type set value savanna
execute as @e[type=villager,tag=exposed_edin,nbt={VillagerData: {type:"minecraft:plains"}}] run data modify entity @s VillagerData.type set value savanna
execute as @e[type=villager,tag=exposed_fife,nbt={VillagerData: {type:"minecraft:plains"}}] run data modify entity @s VillagerData.type set value savanna
execute as @e[type=villager,tag=exposed_glas,nbt={VillagerData: {type:"minecraft:plains"}}] run data modify entity @s VillagerData.type set value savanna
execute as @e[type=villager,tag=exposed_inve,nbt={VillagerData: {type:"minecraft:plains"}}] run data modify entity @s VillagerData.type set value savanna
execute as @e[type=villager,tag=exposed_tobe,nbt={VillagerData: {type:"minecraft:plains"}}] run data modify entity @s VillagerData.type set value savanna

#after average time change villagers to infectious
execute as @e[type=villager,tag=exposed_dund] at @s if predicate infect:infection_chance_dund run tag @s add infectious_dund
execute as @e[type=villager,tag=exposed_edin] at @s if predicate infect:infection_chance_edin run tag @s add infectious_edin
execute as @e[type=villager,tag=exposed_fife] at @s if predicate infect:infection_chance_fife run tag @s add infectious_fife
#execute as @e[type=minecraft:villager,tag=exposed_fife,tag=male] at @s if predicate infect:infection_chance_fife_male run tag @s add infectious_fife
#execute as @e[type=minecraft:villager,tag=exposed_fife,tag=female] at @s if predicate infect:infection_chance_fife_female run tag @s add infectious_fife
execute as @e[type=villager,tag=exposed_glas] at @s if predicate infect:infection_chance_glas run tag @s add infectious_glas
execute as @e[type=villager,tag=exposed_inve] at @s if predicate infect:infection_chance_inve run tag @s add infectious_inve
execute as @e[type=villager,tag=exposed_inve] at @s if entity @s[tag=infectious_inve] run effect give @s minecraft:mining_fatigue 1000 0 false
execute as @e[type=villager,tag=exposed_tobe] at @s if predicate infect:infection_chance_tobe run tag @s add infectious_tobe
#Adjust fever or diarrhea tags so ~80% have symptoms
#diarrhea remove
execute as @e[type=villager,tag=exposed_dund,tag=infectious_dund] at @s run tag @s remove diarrhea
execute as @e[type=villager,tag=exposed_edin,tag=infectious_edin] at @s run tag @s remove diarrhea
execute as @e[type=villager,tag=exposed_fife,tag=infectious_fife] at @s run tag @s remove diarrhea
execute as @e[type=villager,tag=exposed_glas,tag=infectious_glas] at @s run tag @s remove diarrhea
execute as @e[type=villager,tag=exposed_inve,tag=infectious_inve] at @s run tag @s remove diarrhea
execute as @e[type=villager,tag=exposed_tobe,tag=infectious_tobe] at @s run tag @s remove diarrhea
#fever remove
execute as @e[type=villager,tag=exposed_dund,tag=infectious_dund] at @s run tag @s remove fever
execute as @e[type=villager,tag=exposed_edin,tag=infectious_edin] at @s run tag @s remove fever
execute as @e[type=villager,tag=exposed_fife,tag=infectious_fife] at @s run tag @s remove fever
execute as @e[type=villager,tag=exposed_glas,tag=infectious_glas] at @s run tag @s remove fever
execute as @e[type=villager,tag=exposed_inve,tag=infectious_inve] at @s run tag @s remove fever
execute as @e[type=villager,tag=exposed_tobe,tag=infectious_tobe] at @s run tag @s remove fever
##diarrhea
execute as @e[type=villager,tag=exposed_dund,tag=infectious_dund] at @s if predicate infect:diarrhea run tag @s add diarrhea
execute as @e[type=villager,tag=exposed_edin,tag=infectious_edin] at @s if predicate infect:diarrhea run tag @s add diarrhea
execute as @e[type=villager,tag=exposed_fife,tag=infectious_fife] at @s if predicate infect:diarrhea run tag @s add diarrhea
execute as @e[type=villager,tag=exposed_glas,tag=infectious_glas] at @s if predicate infect:diarrhea run tag @s add diarrhea
execute as @e[type=villager,tag=exposed_inve,tag=infectious_inve] at @s if predicate infect:diarrhea run tag @s add diarrhea
execute as @e[type=villager,tag=exposed_tobe,tag=infectious_tobe] at @s if predicate infect:diarrhea run tag @s add diarrhea
##fever
execute as @e[type=villager,tag=exposed_dund,tag=infectious_dund] at @s if predicate infect:fever run tag @s add fever
execute as @e[type=villager,tag=exposed_edin,tag=infectious_edin] at @s if predicate infect:fever run tag @s add fever
execute as @e[type=villager,tag=exposed_fife,tag=infectious_fife] at @s if predicate infect:fever run tag @s add fever
execute as @e[type=villager,tag=exposed_glas,tag=infectious_glas] at @s if predicate infect:fever run tag @s add fever
execute as @e[type=villager,tag=exposed_inve,tag=infectious_inve] at @s if predicate infect:fever run tag @s add fever
execute as @e[type=villager,tag=exposed_tobe,tag=infectious_tobe] at @s if predicate infect:fever run tag @s add fever
#reset sequences for Edinburgh
execute as @e[type=villager,tag=infectious_edin,nbt={VillagerData: {type:"minecraft:savanna"}}] run function infect:assign_sequences_infectious
execute as @e[type=villager,tag=infectious_glas,nbt={VillagerData: {type:"minecraft:savanna"}}] run function infect:assign_sequences_infectious


#both models remove old tags and change appearance
tag @e[type=villager,tag=infectious_dund] remove exposed_dund
tag @e[type=villager,tag=infectious_edin] remove exposed_edin
tag @e[type=villager,tag=infectious_fife] remove exposed_fife
tag @e[type=villager,tag=infectious_glas] remove exposed_glas
tag @e[type=villager,tag=infectious_inve] remove exposed_inve
tag @e[type=villager,tag=infectious_tobe] remove exposed_tobe
#reset antibody titres for new sample collection (Glasgow)
execute as @e[type=villager,tag=infectious_glas,nbt={VillagerData: {type:"minecraft:savanna"}}] run scoreboard players set @s bell_igm 0
execute as @e[type=villager,tag=infectious_glas,nbt={VillagerData: {type:"minecraft:savanna"}}] run scoreboard players set @s bell_igg 0
execute as @e[type=villager,tag=infectious_glas,nbt={VillagerData: {type:"minecraft:savanna"}}] run scoreboard players set @s bell_iga 0
#reset haematology scores for new sample collection (Dundee)
execute as @e[type=villager,tag=infectious_dund,nbt={VillagerData: {type:"minecraft:savanna"}}] run scoreboard players set @s wbc_main 0
execute as @e[type=villager,tag=infectious_dund,nbt={VillagerData: {type:"minecraft:savanna"}}] run scoreboard players set @s wbc_decimal 0
execute as @e[type=villager,tag=infectious_dund,nbt={VillagerData: {type:"minecraft:savanna"}}] run scoreboard players set @s hb_main 0
execute as @e[type=villager,tag=infectious_dund,nbt={VillagerData: {type:"minecraft:savanna"}}] run scoreboard players set @s hb_decimal 0
execute as @e[type=villager,tag=infectious_dund,nbt={VillagerData: {type:"minecraft:savanna"}}] run scoreboard players set @s bell_plt 0
#reset hygiene scores for new sample collection (Inverness)
execute as @e[type=villager,tag=infectious_inve,nbt={VillagerData: {type:"minecraft:savanna"}}] run scoreboard players set @s wash 0
execute as @e[type=villager,tag=infectious_inve,nbt={VillagerData: {type:"minecraft:savanna"}}] run scoreboard players set @s food 0
execute as @e[type=villager,tag=infectious_inve,nbt={VillagerData: {type:"minecraft:savanna"}}] run scoreboard players set @s def 0
#change appearance to indicate infection
execute as @e[type=villager,tag=infectious_dund,nbt={VillagerData: {type:"minecraft:savanna"}}] run data modify entity @s VillagerData.type set value swamp
execute as @e[type=villager,tag=infectious_edin,nbt={VillagerData: {type:"minecraft:savanna"}}] run data modify entity @s VillagerData.type set value swamp
execute as @e[type=villager,tag=infectious_fife,nbt={VillagerData: {type:"minecraft:savanna"}}] run data modify entity @s VillagerData.type set value swamp
execute as @e[type=villager,tag=infectious_glas,nbt={VillagerData: {type:"minecraft:savanna"}}] run data modify entity @s VillagerData.type set value swamp
execute as @e[type=villager,tag=infectious_inve,nbt={VillagerData: {type:"minecraft:savanna"}}] run data modify entity @s VillagerData.type set value swamp
execute as @e[type=villager,tag=infectious_tobe,nbt={VillagerData: {type:"minecraft:savanna"}}] run data modify entity @s VillagerData.type set value swamp

#set villager chance of dying
#for Dundee only villagers older than 50 die
execute as @e[type=villager,tag=infectious_dund] at @s if score @s Age > 40s Age if predicate infect:death_chance_dund run tag @s add dead
execute as @e[type=villager,tag=infectious_edin,tag=!immunocompromised] at @s if predicate infect:death_chance_edin run tag @s add dead
execute as @e[type=villager,tag=infectious_edin,tag=immunocompromised] at @s if predicate infect:death_chance_ic_edin run tag @s add dead
execute as @e[type=villager,tag=infectious_fife,scores={Age=4..10}] unless entity @s[tag=immunocompromised] if predicate infect:death_chance_fife_high run tag @s add dead
execute as @e[type=villager,tag=infectious_fife,scores={Age=20..39}] unless entity @s[tag=immunocompromised] if predicate infect:death_chance_fife_high run tag @s add dead

execute as @e[type=villager,tag=infectious_fife,scores={Age=4..10}] if entity @s[tag=immunocompromised] if predicate infect:death_chance_ic_fife run tag @s add dead
execute as @e[type=villager,tag=infectious_fife,scores={Age=20..39}] if entity @s[tag=immunocompromised] if predicate infect:death_chance_ic_fife run tag @s add dead
execute as @e[type=villager,tag=infectious_fife] at @s unless score @s Age matches 4..10 unless score @s Age matches 20..39 if predicate infect:death_chance_fife run tag @s add dead
execute as @e[type=villager,tag=infectious_glas,tag=!immunocompromised] at @s if predicate infect:death_chance_glas run tag @s add dead
execute as @e[type=villager,tag=infectious_glas,tag=immunocompromised] at @s if predicate infect:death_chance_ic_glas run tag @s add dead
execute as @e[type=villager,tag=infectious_inve] at @s if predicate infect:death_chance_inve run tag @s add dead
execute as @e[type=villager,tag=infectious_tobe] at @s if predicate infect:death_chance_tobe run tag @s add dead

#add sequences for dead in Edinburgh
execute as @e[type=villager,tag=dead,tag=edin] run function infect:assign_sequences_dead_edin
execute as @e[type=villager,tag=dead,tag=glas] run function infect:assign_sequences_dead_glas
execute as @e[type=villager,tag=dead] at @s run function death:disease

#after an average time change villagers to recovered
execute as @e[type=villager,tag=infectious_dund,scores={wbc_main=1}] at @s if predicate infect:recovery_chance_dund_low run tag @s add recovered_dund
execute as @e[type=villager,tag=infectious_dund,scores={wbc_main=2}] at @s if predicate infect:recovery_chance_dund run tag @s add recovered_dund
execute as @e[type=villager,tag=infectious_dund,scores={wbc_main=3..4}] at @s if predicate infect:recovery_chance_dund_high run tag @s add recovered_dund

execute as @e[type=villager,tag=infectious_edin,tag=!immunocompromised] at @s if predicate infect:recovery_chance_edin run tag @s add recovered_edin
execute as @e[type=villager,tag=infectious_edin,tag=immunocompromised] at @s if predicate infect:recovery_chance_ic_edin run tag @s add recovered_edin

execute as @e[type=villager,tag=infectious_fife,tag=!ic_recovery_fife] at @s if predicate infect:recovery_chance_fife run tag @s add recovered_fife
execute as @e[type=villager,tag=infectious_fife,tag=ic_recovery_fife] at @s if predicate infect:recovery_chance_ic_fife run tag @s add recovered_fife

# Non-immunocompromised glasgow
execute as @e[type=villager,tag=infectious_glas,tag=!immunocompromised] at @s if predicate infect:recovery_chance_glas run tag @s add recovered_glas
# Immunocompromised glasgow
execute as @e[type=villager,tag=infectious_glas,tag=immunocompromised] at @s if predicate infect:recovery_chance_ic_glas run tag @s add recovered_glas

execute as @e[type=villager,tag=infectious_inve] at @s if predicate infect:recovery_chance_inve run tag @s add recovered_inve
execute as @e[type=villager,tag=infectious_inve] at @s if entity @s[tag=recovered_inve] run effect clear @s minecraft:mining_fatigue
execute as @e[type=villager,tag=infectious_tobe] at @s if predicate infect:recovery_chance_tobe run tag @s add recovered_tobe

#Adjust fever or diarrhea tags so ~10% have symptoms
#diarrhea remove
execute as @e[type=villager,tag=recovered_dund,tag=infectious_dund] at @s run tag @s remove diarrhea
execute as @e[type=villager,tag=recovered_edin,tag=infectious_edin] at @s run tag @s remove diarrhea
execute as @e[type=villager,tag=recovered_fife,tag=infectious_fife] at @s run tag @s remove diarrhea
execute as @e[type=villager,tag=recovered_glas,tag=infectious_glas] at @s run tag @s remove diarrhea
execute as @e[type=villager,tag=recovered_inve,tag=infectious_inve] at @s run tag @s remove diarrhea
execute as @e[type=villager,tag=recovered_tobe,tag=infectious_tobe] at @s run tag @s remove diarrhea
#fever remove
execute as @e[type=villager,tag=recovered_dund,tag=infectious_dund] at @s run tag @s remove fever
execute as @e[type=villager,tag=recovered_edin,tag=infectious_edin] at @s run tag @s remove fever
execute as @e[type=villager,tag=recovered_fife,tag=infectious_fife] at @s run tag @s remove fever
execute as @e[type=villager,tag=recovered_glas,tag=infectious_glas] at @s run tag @s remove fever
execute as @e[type=villager,tag=recovered_inve,tag=infectious_inve] at @s run tag @s remove fever
execute as @e[type=villager,tag=recovered_tobe,tag=infectious_tobe] at @s run tag @s remove fever
##diarrhea
execute as @e[type=villager,tag=recovered_dund,tag=infectious_dund] at @s if predicate infect:diarrhea_rec run tag @s add diarrhea
execute as @e[type=villager,tag=recovered_edin,tag=infectious_edin] at @s if predicate infect:diarrhea_rec run tag @s add diarrhea
execute as @e[type=villager,tag=recovered_fife,tag=infectious_fife] at @s if predicate infect:diarrhea_rec run tag @s add diarrhea
execute as @e[type=villager,tag=recovered_glas,tag=infectious_glas] at @s if predicate infect:diarrhea_rec run tag @s add diarrhea
execute as @e[type=villager,tag=recovered_inve,tag=infectious_inve] at @s if predicate infect:diarrhea_rec run tag @s add diarrhea
execute as @e[type=villager,tag=recovered_tobe,tag=infectious_tobe] at @s if predicate infect:diarrhea_rec run tag @s add diarrhea
##fever
execute as @e[type=villager,tag=recovered_dund,tag=infectious_dund] at @s if predicate infect:fever_rec run tag @s add fever
execute as @e[type=villager,tag=recovered_edin,tag=infectious_edin] at @s if predicate infect:fever_rec run tag @s add fever
execute as @e[type=villager,tag=recovered_fife,tag=infectious_fife] at @s if predicate infect:fever_rec run tag @s add fever
execute as @e[type=villager,tag=recovered_glas,tag=infectious_glas] at @s if predicate infect:fever_rec run tag @s add fever
execute as @e[type=villager,tag=recovered_inve,tag=infectious_inve] at @s if predicate infect:fever_rec run tag @s add fever
execute as @e[type=villager,tag=recovered_tobe,tag=infectious_tobe] at @s if predicate infect:fever_rec run tag @s add fever
#reset sequences for Edinburgh
execute as @e[type=villager,tag=recovered_edin,nbt=!{VillagerData: {type:"minecraft:plains"}}] run function sampling:assign_sequences_recovered
execute as @e[type=villager,tag=recovered_glas,nbt=!{VillagerData: {type:"minecraft:plains"}}] run function sampling:assign_sequences_recovered


#remove tags and change appearance
tag @e[type=villager,tag=recovered_dund] remove infectious_dund
tag @e[type=villager,tag=recovered_edin] remove infectious_edin
tag @e[type=villager,tag=recovered_fife] remove infectious_fife
tag @e[type=villager,tag=recovered_glas] remove infectious_glas
tag @e[type=villager,tag=recovered_inve] remove infectious_inve
tag @e[type=villager,tag=recovered_tobe] remove infectious_tobe
#reset antibody titres for new sample collection (Glasgow)
execute as @e[type=villager,tag=recovered_glas,nbt=!{VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s bell_igm 0
execute as @e[type=villager,tag=recovered_glas,nbt=!{VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s bell_igg 0
execute as @e[type=villager,tag=recovered_glas,nbt=!{VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s bell_iga 0
#reset haematology scores for new sample collection (Dundee)
execute as @e[type=villager,tag=recovered_dund,nbt=!{VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s wbc_main 0
execute as @e[type=villager,tag=recovered_dund,nbt=!{VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s wbc_decimal 0
execute as @e[type=villager,tag=recovered_dund,nbt=!{VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s hb_main 0
execute as @e[type=villager,tag=recovered_dund,nbt=!{VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s hb_decimal 0
execute as @e[type=villager,tag=recovered_dund,nbt=!{VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s bell_plt 0
#reset hygiene scores for new sample collection (Inverness)
execute as @e[type=villager,tag=recovered_inve,nbt=!{VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s wash 0
execute as @e[type=villager,tag=recovered_inve,nbt=!{VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s food 0
execute as @e[type=villager,tag=recovered_inve,nbt=!{VillagerData: {type:"minecraft:plains"}}] run scoreboard players set @s def 0
#change appearance to show recovery
execute as @e[type=villager,tag=recovered_dund,nbt=!{VillagerData: {profession:"minecraft:nitwit"}}] run data modify entity @s VillagerData.profession set value nitwit 
execute as @e[type=villager,tag=recovered_dund,nbt=!{VillagerData: {type:"minecraft:plains"}}] run data modify entity @s VillagerData.type set value plains 
execute as @e[type=villager,tag=recovered_edin,nbt=!{VillagerData: {profession:"minecraft:nitwit"}}] run data modify entity @s VillagerData.profession set value nitwit 
execute as @e[type=villager,tag=recovered_edin,nbt=!{VillagerData: {type:"minecraft:plains"}}] run data modify entity @s VillagerData.type set value plains 
execute as @e[type=villager,tag=recovered_fife,nbt=!{VillagerData: {profession:"minecraft:nitwit"}}] run data modify entity @s VillagerData.profession set value nitwit 
execute as @e[type=villager,tag=recovered_fife,nbt=!{VillagerData: {type:"minecraft:plains"}}] run data modify entity @s VillagerData.type set value plains 
execute as @e[type=villager,tag=recovered_glas,nbt=!{VillagerData: {profession:"minecraft:nitwit"}}] run data modify entity @s VillagerData.profession set value nitwit 
execute as @e[type=villager,tag=recovered_glas,nbt=!{VillagerData: {type:"minecraft:plains"}}] run data modify entity @s VillagerData.type set value plains 
execute as @e[type=villager,tag=recovered_inve,nbt=!{VillagerData: {profession:"minecraft:nitwit"}}] run data modify entity @s VillagerData.profession set value nitwit 
execute as @e[type=villager,tag=recovered_inve,nbt=!{VillagerData: {type:"minecraft:plains"}}] run data modify entity @s VillagerData.type set value plains
execute as @e[type=villager,tag=recovered_tobe,nbt=!{VillagerData: {profession:"minecraft:nitwit"}}] run data modify entity @s VillagerData.profession set value nitwit 
execute as @e[type=villager,tag=recovered_tobe,nbt=!{VillagerData: {type:"minecraft:plains"}}] run data modify entity @s VillagerData.type set value plains

#after an average time change villagers to susceptible again
execute as @e[type=villager,tag=recovered_dund] at @s if predicate infect:loss_chance_dund run tag @s add susceptible
execute as @e[type=villager,tag=recovered_edin] at @s if predicate infect:loss_chance_edin run tag @s add susceptible
execute as @e[type=villager,tag=recovered_fife] at @s if predicate infect:loss_chance_fife run tag @s add susceptible
execute as @e[type=villager,tag=recovered_glas] at @s if predicate infect:loss_chance_glas run tag @s add susceptible
execute as @e[type=villager,tag=recovered_inve] at @s if predicate infect:loss_chance_inve run tag @s add susceptible
execute as @e[type=villager,tag=recovered_tobe] at @s if predicate infect:loss_chance_tobe run tag @s add susceptible
#remove tags and chance appearance
tag @e[type=villager,tag=susceptible] remove recovered_dund
tag @e[type=villager,tag=susceptible] remove recovered_edin
tag @e[type=villager,tag=susceptible] remove recovered_fife
tag @e[type=villager,tag=susceptible] remove recovered_glas
tag @e[type=villager,tag=susceptible] remove recovered_inve
tag @e[type=villager,tag=susceptible] remove recovered_tobe
#add sequences for Edinburgh
execute as @e[type=villager,tag=susceptible,tag=edin,nbt={VillagerData: {profession:"minecraft:nitwit"}}] run function infect:assign_sequences_susceptible
execute as @e[type=villager,tag=susceptible,tag=glas,nbt={VillagerData: {profession:"minecraft:nitwit"}}] run function infect:assign_sequences_susceptible


#reset antibody titres for new sample collection (Glasgow)
execute as @e[type=villager,tag=susceptible,tag=glas,nbt={VillagerData: {profession:"minecraft:nitwit"}}] run scoreboard players set @s bell_igm 0
execute as @e[type=villager,tag=susceptible,tag=glas,nbt={VillagerData: {profession:"minecraft:nitwit"}}] run scoreboard players set @s bell_igg 0
execute as @e[type=villager,tag=susceptible,tag=glas,nbt={VillagerData: {profession:"minecraft:nitwit"}}] run scoreboard players set @s bell_iga 0
#reset haematology scores for new sample collection (Dundee)
execute as @e[type=villager,tag=susceptible,tag=dund,nbt={VillagerData: {profession:"minecraft:nitwit"}}] run scoreboard players set @s wbc_main 0
execute as @e[type=villager,tag=susceptible,tag=dund,nbt={VillagerData: {profession:"minecraft:nitwit"}}] run scoreboard players set @s wbc_decimal 0
execute as @e[type=villager,tag=susceptible,tag=dund,nbt={VillagerData: {profession:"minecraft:nitwit"}}] run scoreboard players set @s hb_main 0
execute as @e[type=villager,tag=susceptible,tag=dund,nbt={VillagerData: {profession:"minecraft:nitwit"}}] run scoreboard players set @s hb_decimal 0
execute as @e[type=villager,tag=susceptible,tag=dund,nbt={VillagerData: {profession:"minecraft:nitwit"}}] run scoreboard players set @s bell_plt 0
#reset hygiene scores for new sample collection (Inverness)
execute as @e[type=villager,tag=susceptible,tag=inve,nbt={VillagerData: {profession:"minecraft:nitwit"}}] run scoreboard players set @s wash 0
execute as @e[type=villager,tag=susceptible,tag=inve,nbt={VillagerData: {profession:"minecraft:nitwit"}}] run scoreboard players set @s food 0
execute as @e[type=villager,tag=susceptible,tag=inve,nbt={VillagerData: {profession:"minecraft:nitwit"}}] run scoreboard players set @s def 0
#change appearance to susceptible
execute as @e[type=villager,tag=susceptible,nbt={VillagerData: {profession:"minecraft:nitwit"}}] run data modify entity @s VillagerData.profession set value {}