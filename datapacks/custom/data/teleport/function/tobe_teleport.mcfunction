#if tagged with city allow them to teleport
execute as @p[tag=tobermory,limit=1,distance=..1] at @s run title @p[limit=1,distance=..1] actionbar {"text":"Please exit on stern side"}
execute as @p[tag=tobermory,limit=1,distance=..1] at @s run tp @s -3774 64 -35457 90 0
#remove dropped items
kill @e[type=item,nbt=!{Item:{id:"minecraft:filled_map"}}]
#if not tagged tell them they need to go there first
title @p[tag=!tobermory,limit=1,distance=..1] actionbar {"text":"Location must be visited to activate teleporter"}