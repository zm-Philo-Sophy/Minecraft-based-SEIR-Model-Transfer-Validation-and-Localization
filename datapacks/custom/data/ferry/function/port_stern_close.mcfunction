execute if score port_stern Ferry_Doors > zero Ferry_Doors run scoreboard players remove port_stern Ferry_Doors 1
execute if score port_stern Ferry_Doors = phase_1 Ferry_Doors run fill -3435 63 -35303 -3437 63 -35303 air
execute if score port_stern Ferry_Doors = phase_1 Ferry_Doors run fill -3435 66 -35303 -3437 66 -35303 quartz_slab[type=bottom]
execute if score port_stern Ferry_Doors = phase_1 Ferry_Doors run fill -3435 65 -35303 -3437 65 -35303 gray_concrete
execute if score port_stern Ferry_Doors = phase_2 Ferry_Doors run fill -3435 62 -35303 -3437 62 -35303 air
execute if score port_stern Ferry_Doors = phase_2 Ferry_Doors run fill -3435 65 -35303 -3437 65 -35303 quartz_slab[type=bottom]
execute if score port_stern Ferry_Doors = phase_2 Ferry_Doors run fill -3435 64 -35303 -3437 64 -35303 gray_concrete
execute if score port_stern Ferry_Doors = zero Ferry_Doors run setblock -3435 65 -35305 warped_button[powered=false,facing=west]
execute if score port_stern Ferry_Doors = zero Ferry_Doors run setblock ~ ~ ~ air