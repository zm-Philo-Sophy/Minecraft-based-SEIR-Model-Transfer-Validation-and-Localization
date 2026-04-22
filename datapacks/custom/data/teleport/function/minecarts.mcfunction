#this runs when the transporation button is pressed
#remove all minecarts from world (to prevent any collisions)
kill @e[type=minecart]
#summon minecart just below the button
execute if block ~1 ~ ~ warped_button run summon minecart ~1 ~-1 ~
execute if block ~ ~ ~1 warped_button run summon minecart ~ ~-1 ~1
execute if block ~-1 ~ ~ warped_button run summon minecart ~-1 ~-1 ~
execute if block ~ ~ ~-1 warped_button run summon minecart ~ ~-1 ~-1