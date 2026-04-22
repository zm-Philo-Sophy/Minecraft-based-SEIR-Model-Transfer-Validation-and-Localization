execute if score tobe_bow Ferry_Doors > zero Ferry_Doors run scoreboard players remove tobe_bow Ferry_Doors 1
execute if score tobe_bow Ferry_Doors = phase_1 Ferry_Doors run fill -3774 63 -35465 -3776 63 -35465 air
execute if score tobe_bow Ferry_Doors = phase_1 Ferry_Doors run fill -3774 66 -35465 -3776 66 -35465 quartz_slab[type=bottom]
execute if score tobe_bow Ferry_Doors = phase_1 Ferry_Doors run fill -3774 65 -35465 -3776 65 -35465 gray_concrete
execute if score tobe_bow Ferry_Doors = phase_2 Ferry_Doors run fill -3774 62 -35465 -3776 62 -35465 air
execute if score tobe_bow Ferry_Doors = phase_2 Ferry_Doors run fill -3774 65 -35465 -3776 65 -35465 quartz_slab[type=bottom]
execute if score tobe_bow Ferry_Doors = phase_2 Ferry_Doors run fill -3774 64 -35465 -3776 64 -35465 gray_concrete
execute if score tobe_bow Ferry_Doors = zero Ferry_Doors run setblock -3774 65 -35463 warped_button[powered=false,facing=west]
execute if score tobe_bow Ferry_Doors = zero Ferry_Doors run setblock ~ ~ ~ air