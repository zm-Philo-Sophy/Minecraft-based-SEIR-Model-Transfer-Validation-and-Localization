execute if block -20 73 -40 oak_button[powered=true] run scoreboard players set answer Tree_Game 3
execute if block -20 72 -40 oak_button[powered=true] run scoreboard players set answer Tree_Game 2
execute if block -20 71 -40 oak_button[powered=true] run scoreboard players set answer Tree_Game 5
execute if block -18 73 -40 oak_button[powered=true] run scoreboard players set answer Tree_Game 6
execute if block -18 72 -40 oak_button[powered=true] run scoreboard players set answer Tree_Game 4
execute if block -18 71 -40 oak_button[powered=true] run scoreboard players set answer Tree_Game 1
execute if score round Tree_Game = answer Tree_Game run data merge block -19 71 -40 {Text1:'{"text":"Last answer"}',Text3:'{"text":"CORRECT"}',Text4:'{"text":" "}'}
execute if block ~ ~ ~1 oak_button[powered=true] if score round Tree_Game > answer Tree_Game run data merge block -19 71 -40 {Text1:'{"text":"Last answer"}',Text3:'{"text":"INCORRECT"}',Text4:'{"text":"Try again"}'}
execute if block ~ ~ ~1 oak_button[powered=true] if score round Tree_Game < answer Tree_Game run data merge block -19 71 -40 {Text1:'{"text":"Last answer"}',Text3:'{"text":"INCORRECT"}',Text4:'{"text":"Try again"}'}
execute if block ~ ~ ~1 oak_button[powered=true] if score round Tree_Game = answer Tree_Game run scoreboard players add round Tree_Game 1
execute if score round Tree_Game > dark_oak Tree_Game run scoreboard players set round Tree_Game 1
execute if score round Tree_Game = oak Tree_Game run data merge block -19 72 -40 {Text2:'{"text":"DARK OAK"}'}
execute if score round Tree_Game = spruce Tree_Game run data merge block -19 72 -40 {Text2:'{"text":"SPRUCE"}'}
execute if score round Tree_Game = birch Tree_Game run data merge block -19 72 -40 {Text2:'{"text":"OAK"}'}
execute if score round Tree_Game = jungle Tree_Game run data merge block -19 72 -40 {Text2:'{"text":"ACACIA"}'}
execute if score round Tree_Game = acacia Tree_Game run data merge block -19 72 -40 {Text2:'{"text":"BIRCH"}'}
execute if score round Tree_Game = dark_oak Tree_Game run data merge block -19 72 -40 {Text2:'{"text":"JUNGLE"}'}