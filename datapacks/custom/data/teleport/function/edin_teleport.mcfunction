#if tagged with city teleport there
execute as @p[tag=edinburgh,limit=1,distance=..1] at @s run tp -2029 60 -35018
#remove dropped items
kill @e[type=item,nbt=!{Item:{id:"minecraft:filled_map"}}]
#if not tagged with city tell them they need to go there first
title @p[tag=!edinburgh,limit=1,distance=..1] actionbar {"text":"Location must be visited to activate teleporter"}