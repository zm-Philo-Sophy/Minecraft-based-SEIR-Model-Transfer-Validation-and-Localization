#if tagged with city allow to teleport
execute as @p[tag=dundee,limit=1,distance=..1] at @s run tp -1861 64 -35341
#remove dropped items
kill @e[type=item,nbt=!{Item:{id:"minecraft:filled_map"}}]
#if not tagged with city tell them they need to go there first
title @p[tag=!dundee,limit=1,distance=..1] actionbar {"text":"Location must be visited to activate teleporter"}