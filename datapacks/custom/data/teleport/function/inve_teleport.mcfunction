#if tagged with city allow them to teleport
execute as @p[tag=inverness,limit=1,distance=..1] at @s run tp -2645 63 -35960
#remove dropped items
kill @e[type=item,nbt=!{Item:{id:"minecraft:filled_map"}}]
#if not tagged tell them they need to go there first
title @p[tag=!inverness,limit=1,distance=..1] actionbar {"text":"Location must be visited to activate teleporter"}