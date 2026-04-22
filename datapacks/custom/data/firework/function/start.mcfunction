#this is the first function to be triggered by the pressure plate on Calton Hill
#start scoreboard
scoreboard objectives add Fireworks dummy
#set timer to zero
scoreboard players set timer Fireworks 0
#set time each round of fireworks should go off (in ticks)
scoreboard players set 1 Fireworks 50
scoreboard players set 2 Fireworks 100
scoreboard players set 3 Fireworks 150
scoreboard players set 4 Fireworks 200
scoreboard players set 5 Fireworks 275
scoreboard players set end Fireworks 300
#turn player to face the show
execute as @e[type=player,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing -2052 72 -35012
#replace block with one with function to run the show
setblock ~ ~ ~ repeating_command_block{auto:1,Command:"function firework:explosion"}
