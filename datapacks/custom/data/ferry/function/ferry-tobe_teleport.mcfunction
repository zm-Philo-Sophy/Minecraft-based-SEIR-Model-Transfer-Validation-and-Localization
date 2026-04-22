tag @p add tobermory
#if tagged with city allow them to teleport
execute as @p[tag=tobermory,limit=1,distance=..1] at @s if block -3435 66 -35303 quartz_slab if block -3435 66 -35318 quartz_slab run title @p[limit=1,distance=..1] actionbar {"text":"Please exit on stern side"}
execute as @p[tag=tobermory,limit=1,distance=..1] at @s if block -3435 66 -35303 quartz_slab if block -3435 66 -35318 quartz_slab run tp @s -3774 64 -35457
execute as @p[tag=tobermory,limit=1,distance=..1] at @s if block -3435 66 -35303 air if block -3435 66 -35318 air run title @p[limit=1,distance=..1] actionbar {"text":"Ensure all ferry doors closed before commencing voyage"}
execute as @p[tag=tobermory,limit=1,distance=..1] at @s if block -3435 66 -35303 air if block -3435 66 -35318 quartz_slab run title @p[limit=1,distance=..1] actionbar {"text":"Ensure all ferry doors closed before commencing voyage"}
execute as @p[tag=tobermory,limit=1,distance=..1] at @s if block -3435 66 -35303 quartz_slab if block -3435 66 -35318 air run title @p[limit=1,distance=..1] actionbar {"text":"Ensure all ferry doors closed before commencing voyage"}
