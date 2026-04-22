#list of commands always running
#empty villager inventories to stop breeding
function life:empty
#replace any wheat a farmer picks
execute at @e[type=villager,nbt={VillagerData: {profession:"minecraft:farmer"}}] as @s if block ~ ~-1 ~ farmland if block ~ ~ ~ air run setblock ~ ~ ~ wheat{age:0}
#keep villagers off tracks
execute as @e[type=villager] at @s if block ~ ~ ~ rail run tp ~0.1 ~ ~0.1
execute as @e[type=villager] at @s if block ~ ~ ~ powered_rail run tp ~0.1 ~ ~0.1
#log if villager is killed by players
execute as @e[scores={killed_by_player=1..}] at @s run function death:murdered
#unlock teleporters for players
function teleport:rules_teleport
#teleport for science centre
function teleport:science_tardis
#delete any tnt before it explodes
kill @e[type=tnt]
#remove extra minecarts
execute as @p at @s run kill @e[type=minecart,distance=7..]
#set all players gamemode to adventure mode (unless they are the creator)
#execute as @a[name=!NeuronSafari,gamemode=!adventure] at @s run gamemode adventure
#put sick counts in science centre
function science_museum:sick_count
#operate ferry doors
function ferry:doors