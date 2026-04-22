execute if block -2629 95 -35592 oak_button[powered=true] run tp @p -1861 64 -35341
execute if block -2629 95 -35591 oak_button[powered=true] run tp @p -2029 61 -35018
execute if block -2629 95 -35590 oak_button[powered=true] run tp @p -1998 64 -35108
execute if block -2629 95 -35588 oak_button[powered=true] run tp @p -2630 63 -34947
execute if block -2629 95 -35587 oak_button[powered=true] run tp @p -2645 63 -35960
execute if block -2629 95 -35586 oak_button[powered=true] run tp @p -3774 64 -35457 90 0
setblock -2633 93 -35589 repeating_command_block{auto:1,Command:"function timer:run"}
scoreboard objectives setdisplay sidebar Time_Remaining
execute if block ~-1 ~ ~ oak_button[powered=true] run tellraw @p[tag=!evolution] ["\n\n\n\n\n\n\n",{"text":"You have ","bold":true,"color":"aqua"},{"score":{"name":"total","objective":"Countdown"},"bold":true,"color":"aqua"},{"text":" minutes to Assess the Situation in Scotland","bold":true,"color":"aqua"},"\n",{"text":"Good luck","color":"blue"},"\n","\n"]
execute if block ~-1 ~ ~ oak_button[powered=true] run tellraw @p[tag=evolution] ["\n\n\n\n\n\n\n",{"text":"You have ","bold":true,"color":"aqua"},{"score":{"name":"total","objective":"Countdown"},"bold":true,"color":"aqua"},{"text":" minutes to collect different strains of the virus","bold":true,"color":"aqua"},"\n",{"text":"Good luck","color":"blue"},"\n","\n"]
function life:start