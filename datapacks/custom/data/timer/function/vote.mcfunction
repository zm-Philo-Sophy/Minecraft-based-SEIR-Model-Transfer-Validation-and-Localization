execute if block -2637 95 -35586 oak_button[powered=true] if block ~1 ~ ~ oak_button[powered=true] run scoreboard players add Dundee Vote 1
execute if block -2637 95 -35587 oak_button[powered=true] if block ~1 ~ ~ oak_button[powered=true] run scoreboard players add Edinburgh Vote 1
execute if block -2637 95 -35588 oak_button[powered=true] if block ~1 ~ ~ oak_button[powered=true] run scoreboard players add Kirkaldy Vote 1
execute if block -2637 95 -35590 oak_button[powered=true] if block ~1 ~ ~ oak_button[powered=true] run scoreboard players add Glasgow Vote 1
execute if block -2637 95 -35591 oak_button[powered=true] if block ~1 ~ ~ oak_button[powered=true] run scoreboard players add Inverness Vote 1
execute if block -2637 95 -35592 oak_button[powered=true] if block ~1 ~ ~ oak_button[powered=true] run scoreboard players add Tobermory Vote 1
execute if score minutes Countdown = second Countdown run function timer:on_20
execute if score minutes Countdown = fifteen Countdown run function timer:on_15
execute if score minutes Countdown = twelve Countdown run function timer:on_12
execute if score minutes Countdown = ten Countdown run function timer:on_10
execute if block ~1 ~ ~ oak_button[powered=true] run tellraw @p ["","\n\n\n",{"text":"Vote Results","bold":true,"color":"white"},"\n\n",{"text":"Dundee: ","color":"aqua"},{"score":{"name":"Dundee","objective":"Vote"},"color":"aqua"},"\n",{"text":"Edinburgh: ","color":"yellow"},{"score":{"name":"Edinburgh","objective":"Vote"},"color":"yellow"},"\n",{"text":"Kirkaldy: ","color":"blue"},{"score":{"name":"Kirkaldy","objective":"Vote"},"color":"blue"},"\n",{"text":"Glasgow: ","color":"red"},{"score":{"name":"Glasgow","objective":"Vote"},"color":"red"},"\n",{"text":"Inverness: ","color":"green"},{"score":{"name":"Inverness","objective":"Vote"},"color":"green"},"\n",{"text":"Tobermory: ","color":"white"},{"score":{"name":"Tobermory","objective":"Vote"},"color":"white"},"\n"]