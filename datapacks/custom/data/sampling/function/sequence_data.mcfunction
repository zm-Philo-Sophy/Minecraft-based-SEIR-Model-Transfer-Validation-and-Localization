#Healthy
#assign which sample individual gives (final score is none)
#no salmonella so removed
execute as @e[type=villager,tag=edin,tag=susceptible,sort=nearest,limit=1,distance=..3] at @s if score @s DNA_Seq = zero DNA_Seq if predicate sampling:70 run scoreboard players set @s DNA_Seq 1
execute as @e[type=villager,tag=edin,tag=susceptible,sort=nearest,limit=1,distance=..3] at @s if score @s DNA_Seq = zero DNA_Seq if predicate sampling:30 run scoreboard players set @s DNA_Seq 3
#Returns no data if all above false
execute as @e[type=villager,tag=edin,tag=susceptible,sort=nearest,limit=1,distance=..3] at @s if score @s DNA_Seq = zero DNA_Seq run scoreboard players set @s DNA_Seq 5
#Gives correct sequence depending on true score above.
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=susceptible] at @s if score @s DNA_Seq = one DNA_Seq run scoreboard players set @s commensals 1
#execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=susceptible] at @s if score @s DNA_Seq = two DNA_Seq run scoreboard players set @s salmonella 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=susceptible] at @s if score @s DNA_Seq = three DNA_Seq run scoreboard players set @s rv 1
#execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=susceptible] at @s if score @s DNA_Seq = one DNA_Seq run function sampling:commensals
#execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=susceptible] at @s if score @s DNA_Seq = two DNA_Seq run function sampling:salmonella
#execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=susceptible] at @s if score @s DNA_Seq = three DNA_Seq run function sampling:rv
#tag to make pages
execute if score @s commensals matches 1 run tag @s add has_commensals
execute if score @s salmonella matches 1 run tag @s add has_salmonella
execute if score @s rv matches 1 run tag @s add has_rv

#Exposed
#assign which sample individual gives (final score is none) 
execute as @e[type=villager,tag=exposed_edin,sort=nearest,limit=1,distance=..3] at @s if score @s DNA_Seq = zero DNA_Seq if predicate sampling:60 run scoreboard players set @s DNA_Seq 1
execute as @e[type=villager,tag=exposed_edin,sort=nearest,limit=1,distance=..3] at @s if score @s DNA_Seq = zero DNA_Seq if predicate sampling:10 run scoreboard players set @s DNA_Seq 2
execute as @e[type=villager,tag=exposed_edin,sort=nearest,limit=1,distance=..3] at @s if score @s DNA_Seq = zero DNA_Seq if predicate sampling:30 run scoreboard players set @s DNA_Seq 3
#Returns no data if all above false
execute as @e[type=villager,tag=exposed_edin,sort=nearest,limit=1,distance=..3] at @s if score @s DNA_Seq = zero DNA_Seq run scoreboard players set @s DNA_Seq 5
#Gives correct sequence depending on true score above.
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=exposed_edin] at @s if score @s DNA_Seq = one DNA_Seq run scoreboard players set @s commensals 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=exposed_edin] at @s if score @s DNA_Seq = two DNA_Seq run scoreboard players set @s salmonella 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=exposed_edin] at @s if score @s DNA_Seq = three DNA_Seq run scoreboard players set @s rv 1
#execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=exposed_edin] at @s if score @s DNA_Seq = one DNA_Seq run function sampling:commensals
#execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=exposed_edin] at @s if score @s DNA_Seq = two DNA_Seq run function sampling:salmonella
#execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=exposed_edin] at @s if score @s DNA_Seq = three DNA_Seq run function sampling:rv
#tag to make pages
execute if score @s commensals matches 1 run tag @s add has_commensals
execute if score @s salmonella matches 1 run tag @s add has_salmonella
execute if score @s rv matches 1 run tag @s add has_rv

#Infected
#assign which sample individual gives (final score is none) 
execute as @e[type=villager,tag=infectious_edin,sort=nearest,limit=1,distance=..3] at @s if score @s DNA_Seq = zero DNA_Seq if predicate sampling:10 run scoreboard players set @s DNA_Seq 1
execute as @e[type=villager,tag=infectious_edin,sort=nearest,limit=1,distance=..3] at @s if score @s DNA_Seq = zero DNA_Seq if predicate sampling:80 run scoreboard players set @s DNA_Seq 2
execute as @e[type=villager,tag=infectious_edin,sort=nearest,limit=1,distance=..3] at @s if score @s DNA_Seq = zero DNA_Seq if predicate sampling:10 run scoreboard players set @s DNA_Seq 3
#Returns no data if all above false
execute as @e[type=villager,tag=infectious_edin,sort=nearest,limit=1,distance=..3] at @s if score @s DNA_Seq = zero DNA_Seq run scoreboard players set @s DNA_Seq 5
#Gives correct sequence depending on true score above.
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_edin] at @s if score @s DNA_Seq = one DNA_Seq run scoreboard players set @s commensals 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_edin] at @s if score @s DNA_Seq = two DNA_Seq run scoreboard players set @s salmonella 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_edin] at @s if score @s DNA_Seq = three DNA_Seq run scoreboard players set @s rv 1
#execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_edin] at @s if score @s DNA_Seq = one DNA_Seq run function sampling:commensals
#execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_edin] at @s if score @s DNA_Seq = two DNA_Seq run function sampling:salmonella
#execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=infectious_edin] at @s if score @s DNA_Seq = three DNA_Seq run function sampling:rv
#tag to make pages
execute if score @s commensals matches 1 run tag @s add has_commensals
execute if score @s salmonella matches 1 run tag @s add has_salmonella
execute if score @s rv matches 1 run tag @s add has_rv

#Recovered
#assign which sample individual gives (final score is none)
#no salmonella so removed
execute as @e[type=villager,tag=recovered_edin,sort=nearest,limit=1,distance=..3] at @s if score @s DNA_Seq = zero DNA_Seq if predicate sampling:70 run scoreboard players set @s DNA_Seq 1
execute as @e[type=villager,tag=recovered_edin,sort=nearest,limit=1,distance=..3] at @s if score @s DNA_Seq = zero DNA_Seq if predicate sampling:30 run scoreboard players set @s DNA_Seq 3
#Returns no data if all above false
execute as @e[type=villager,tag=recovered_edin,sort=nearest,limit=1,distance=..3] at @s if score @s DNA_Seq = zero DNA_Seq run scoreboard players set @s DNA_Seq 5
#Gives correct sequence depending on true score above.
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=recovered_edin] at @s if score @s DNA_Seq = one DNA_Seq run scoreboard players set @s commensals 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=recovered_edin] at @s if score @s DNA_Seq = two DNA_Seq run scoreboard players set @s salmonella 1
execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=recovered_edin] at @s if score @s DNA_Seq = three DNA_Seq run scoreboard players set @s rv 1
#execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=recovered_edin] at @s if score @s DNA_Seq = one DNA_Seq run function sampling:commensals
#execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=recovered_edin] at @s if score @s DNA_Seq = two DNA_Seq run function sampling:salmonella
#execute as @e[type=villager,sort=nearest,limit=1,distance=..3,tag=recovered_edin] at @s if score @s DNA_Seq = three DNA_Seq run function sampling:rv
#tag to make pages
execute if score @s commensals matches 1 run tag @s add has_commensals
execute if score @s salmonella matches 1 run tag @s add has_salmonella
execute if score @s rv matches 1 run tag @s add has_rv