setblock -2633 93 -35589 air
scoreboard objectives remove Time_Remaining
scoreboard objectives remove Countdown
tp @p -2632 95 -35589 270 0
scoreboard objectives add Time_Remaining dummy
scoreboard objectives add Countdown dummy
scoreboard players set minutes Countdown 12
scoreboard players operation Minutes Time_Remaining = minutes Countdown
scoreboard players set Seconds Time_Remaining 0
scoreboard players operation total Countdown = Minutes Time_Remaining
scoreboard players set half_minute Countdown 6
scoreboard players set half_second Countdown 0
scoreboard players set minute Countdown 60
scoreboard players set second Countdown 20
scoreboard players set thirty Countdown 30
scoreboard players set fifteen Countdown 15
scoreboard players set twelve Countdown 12
scoreboard players set ten Countdown 10
scoreboard players set five Countdown 5
scoreboard players set four Countdown 4
scoreboard players set three Countdown 3
scoreboard players set two Countdown 2
scoreboard players set one Countdown 1
scoreboard players set zero Countdown 0
scoreboard players set counter Countdown 0