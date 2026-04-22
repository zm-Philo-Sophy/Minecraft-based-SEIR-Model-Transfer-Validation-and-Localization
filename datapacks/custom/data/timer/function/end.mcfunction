setblock -2633 93 -35589 air
scoreboard objectives setdisplay sidebar
tp @p[tag=!evolution] -2634 95 -35589 90 0
tp @p[tag=evolution] -2613 74 -35592
tellraw @p[tag=!evolution] ["","\n",{"text":"Please vote for the city ","bold":true,"color":"white"},{"text":"you","bold":true,"underlined":true,"color":"white"},{"text":" feel needs the most help","bold":true,"color":"white"},"\n"]
tellraw @p[tag=evolution] ["",{"text":"Congratulations! You have now seen how DNA samples are collected in the field.","bold":true,"color":"aqua"},"\n",{"text":"Now you need to figure out the evolution of the virus across the different cities.","underlined":true,"color":"white"},"\n",{"text":"Get instruction on how to do this by pressing the \"instructions\" button.","color":"white"},"\n",{"text":"Collect any missing bits of virus DNA from the chest.","color":"white"}]