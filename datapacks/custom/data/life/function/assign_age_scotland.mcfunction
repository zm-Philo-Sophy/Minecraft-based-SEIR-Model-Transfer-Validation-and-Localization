# Roll a weighted number across the whole population (inclusive range)
execute store result score @s AgeRoll run random value 0..5439840
#Scottish Census Data
# 0–4 : 248,405  (0..248404)
execute if score @s AgeRoll matches 0..248404 store result score @s Age run random value 0..4
# 5–9 : 282,223  (248405..530627)
execute if score @s AgeRoll matches 248405..530627 store result score @s Age run random value 5..9
# 10–14 : 301,826 (530628..832453)
execute if score @s AgeRoll matches 530628..832453 store result score @s Age run random value 10..14
# 15 : 58,795 (832454..891248)
execute if score @s AgeRoll matches 832454..891248 run scoreboard players set @s Age 15
# 16–17 : 113,067 (891249..1004315)
execute if score @s AgeRoll matches 891249..1004315 store result score @s Age run random value 16..17
# 18–19 : 127,968 (1004316..1132283)
execute if score @s AgeRoll matches 1004316..1132283 store result score @s Age run random value 18..19
# 20–24 : 341,448 (1132284..1473731)
execute if score @s AgeRoll matches 1132284..1473731 store result score @s Age run random value 20..24
# 25–29 : 337,407 (1473732..1811138)
execute if score @s AgeRoll matches 1473732..1811138 store result score @s Age run random value 25..29
# 30–34 : 356,770 (1811139..2167908)
execute if score @s AgeRoll matches 1811139..2167908 store result score @s Age run random value 30..34
# 35–39 : 346,577 (2167909..2514485)
execute if score @s AgeRoll matches 2167909..2514485 store result score @s Age run random value 35..39
# 40–44 : 334,197 (2514486..2848682)
execute if score @s AgeRoll matches 2514486..2848682 store result score @s Age run random value 40..44
# 45–49 : 328,991 (2848683..3177673)
execute if score @s AgeRoll matches 2848683..3177673 store result score @s Age run random value 45..49
# 50–54 : 391,172 (3177674..3568845)
execute if score @s AgeRoll matches 3177674..3568845 store result score @s Age run random value 50..54
# 55–59 : 408,671 (3568846..3977516)
execute if score @s AgeRoll matches 3568846..3977516 store result score @s Age run random value 55..59
# 60–64 : 371,718 (3977517..4349234)
execute if score @s AgeRoll matches 3977517..4349234 store result score @s Age run random value 60..64
# 65–69 : 315,169 (4349235..4664403)
execute if score @s AgeRoll matches 4349235..4664403 store result score @s Age run random value 65..69
# 70–74 : 284,757 (4664404..4949160)
execute if score @s AgeRoll matches 4664404..4949160 store result score @s Age run random value 70..74
# 75–79 : 218,239 (4949161..5167399)
execute if score @s AgeRoll matches 4949161..5167399 store result score @s Age run random value 75..79
# 80–84 : 142,132 (5167400..5309531)
execute if score @s AgeRoll matches 5167400..5309531 store result score @s Age run random value 80..84
# 85+ : 130,309 (5309532..5439840)
execute if score @s AgeRoll matches 5309532..5439840 run scoreboard players set @s Age 85
