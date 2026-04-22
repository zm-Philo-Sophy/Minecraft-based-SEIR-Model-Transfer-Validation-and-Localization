execute if score Minutes Time_Remaining = total Countdown run function life:start
scoreboard players add counter Countdown 1 
execute if score counter Countdown = second Countdown run scoreboard players remove Seconds Time_Remaining 1
execute if score counter Countdown = second Countdown if score Seconds Time_Remaining < zero Countdown run scoreboard players remove Minutes Time_Remaining 1
execute if score counter Countdown = second Countdown if score Seconds Time_Remaining < zero Countdown run scoreboard players set Seconds Time_Remaining 59
execute if score counter Countdown = second Countdown run scoreboard players set counter Countdown 0
execute if score counter Countdown = zero Countdown if score Minutes Time_Remaining = half_minute Countdown if score Seconds Time_Remaining = half_second Countdown run tellraw @p {"text":"You're half way there","color":"yellow"}
execute if score counter Countdown = zero Countdown if score Minutes Time_Remaining = one Countdown if score Seconds Time_Remaining = zero Countdown run tellraw @p {"text":"1 minute left! Hurry up!","color":"yellow"}
execute if score counter Countdown = zero Countdown if score Minutes Time_Remaining = zero Countdown if score Seconds Time_Remaining = thirty Countdown run tellraw @p {"text":"30 seconds!","color":"yellow"}
execute if score counter Countdown = zero Countdown if score Minutes Time_Remaining = zero Countdown if score Seconds Time_Remaining = ten Countdown run tellraw @p {"text":"10 seconds! Time to finish up","color":"yellow"}
execute if score counter Countdown = zero Countdown if score Minutes Time_Remaining = zero Countdown if score Seconds Time_Remaining = five Countdown run tellraw @p {"text":"5 seconds","color":"yellow"}
execute if score counter Countdown = zero Countdown if score Minutes Time_Remaining = zero Countdown if score Seconds Time_Remaining = four Countdown run tellraw @p {"text":"4","color":"yellow"}
execute if score counter Countdown = zero Countdown if score Minutes Time_Remaining = zero Countdown if score Seconds Time_Remaining = three Countdown run tellraw @p {"text":"3","color":"yellow"}
execute if score counter Countdown = zero Countdown if score Minutes Time_Remaining = zero Countdown if score Seconds Time_Remaining = two Countdown run tellraw @p {"text":"2","color":"yellow"}
execute if score counter Countdown = zero Countdown if score Minutes Time_Remaining = zero Countdown if score Seconds Time_Remaining = one Countdown run tellraw @p {"text":"1","color":"yellow"}
execute if score counter Countdown = zero Countdown if score Minutes Time_Remaining = zero Countdown if score Seconds Time_Remaining = zero Countdown run title @a title {"text":"Time's Up","color":"red"}
execute if score counter Countdown = zero Countdown if score Minutes Time_Remaining = zero Countdown if score Seconds Time_Remaining = zero Countdown run function timer:end