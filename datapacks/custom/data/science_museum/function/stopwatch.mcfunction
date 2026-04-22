execute if entity @p[distance=..4] run scoreboard objectives add Science_Timer dummy
execute as @p at @p if block ~ ~-1 ~ polished_diorite run scoreboard players set timer Science_Timer 0
execute as @p at @p if block ~ ~-1 ~ polished_diorite run scoreboard players set total_time Science_Timer 0
execute as @p at @p if block ~ ~-1 ~ polished_diorite run scoreboard players set zero Science_Timer 0
execute as @p at @p if block ~ ~-1 ~ polished_diorite run scoreboard players set second_set Science_Timer 10
execute as @p at @p if block ~ ~-1 ~ polished_diorite run scoreboard players set decisecond_set Science_Timer 2
execute as @p at @p if block ~ ~-1 ~ red_concrete run scoreboard players add timer Science_Timer 1
execute as @p at @p if block ~ ~-1 ~ red_concrete run scoreboard players add total_time Science_Timer 1
execute if score timer Science_Timer = decisecond_set Science_Timer run scoreboard players add deciseconds Science_Timer 1
execute if score timer Science_Timer = decisecond_set Science_Timer run scoreboard players set timer Science_Timer 0
execute if score deciseconds Science_Timer = second_set Science_Timer run scoreboard players add seconds Science_Timer 1
execute if score deciseconds Science_Timer = second_set Science_Timer run scoreboard players set deciseconds Science_Timer 0
execute as @p at @p if block ~ ~-1 ~ white_concrete if score total_time Science_Timer > zero Science_Timer run data merge block -18 79 -10 {Text3:"[\"\",{\"score\":{\"name\":\"seconds\",\"objective\":\"Science_Timer\"}},\".\",{\"score\":{\"name\":\"deciseconds\",\"objective\":\"Science_Timer\"}},\" s\"]"}
execute as @p at @p if block ~ ~-1 ~ white_concrete run scoreboard objectives remove Science_Timer
execute if entity @p[distance=100..] run data merge block -18 79 -10 {Text3:'{"text":" "}'}