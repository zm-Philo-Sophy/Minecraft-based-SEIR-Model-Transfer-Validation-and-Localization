scoreboard players operation #top calc = R_holder r_total
scoreboard players operation #bottom calc = edinburgh total_infected_others

scoreboard players operation #result calc = #top calc
scoreboard players operation #result calc /= #bottom calc

# 4. Display the result
tellraw @a ["", {"text": "R_mean = ", "color": "gold"}, {"score": {"name": "#result", "objective": "calc"}}]