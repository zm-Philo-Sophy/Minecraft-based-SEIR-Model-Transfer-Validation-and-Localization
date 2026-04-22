tag @p add tobermory
#if tagged with city allow them to teleport
execute as @p[tag=tobermory,limit=1,distance=..1] at @s if block -3774 66 -35450 quartz_slab if block -3774 66 -35465 quartz_slab run title @p[limit=1,distance=..1] actionbar {"text":"Please exit on bow side"}
execute as @p[tag=tobermory,limit=1,distance=..1] at @s if block -3774 66 -35450 quartz_slab if block -3774 66 -35465 quartz_slab run tp @s -3435 64 -35310
execute as @p[tag=tobermory,limit=1,distance=..1] at @s if block -3774 66 -35450 air if block -3774 66 -35465 air run title @p[limit=1,distance=..1] actionbar {"text":"Ensure all ferry doors closed before commencing voyage"}
execute as @p[tag=tobermory,limit=1,distance=..1] at @s if block -3774 66 -35450 air if block -3774 66 -35465 quartz_slab run title @p[limit=1,distance=..1] actionbar {"text":"Ensure all ferry doors closed before commencing voyage"}
execute as @p[tag=tobermory,limit=1,distance=..1] at @s if block -3774 66 -35450 quartz_slab if block -3774 66 -35465 air run title @p[limit=1,distance=..1] actionbar {"text":"Ensure all ferry doors closed before commencing voyage"}
