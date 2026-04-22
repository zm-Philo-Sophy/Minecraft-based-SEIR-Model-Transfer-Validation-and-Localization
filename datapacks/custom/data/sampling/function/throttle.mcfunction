# -------------------------------------------------------
# throttle.mcfunction — called every tick, fires step every N ticks
# Currently: 1.0 seconds per step
# -------------------------------------------------------

#Minecraft reads tick.json automatically
#Every single tick (20 times per second) it looks for a file at exactly this path:
#data/minecraft/tags/function/tick.json

#Throttle function
scoreboard players add #timer Tick 1
execute if score #timer Tick matches 20.. if score #running Tick matches 1 run function sampling:populations_glasgow
execute if score #timer Tick matches 20.. run scoreboard players set #timer Tick 0