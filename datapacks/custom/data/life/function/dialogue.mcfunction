#label villagers by village
tag @e[type=villager,x=-1891,dx=76,y=63,dy=4,z=-35375,dz=41] add dund
tag @e[type=villager,x=-2095,dx=108,y=61,dy=6,z=-35029,dz=48] add edin
tag @e[type=villager,x=-2017,dx=49,y=62,dy=5,z=-35142,dz=52] add fife
tag @e[type=villager,x=-2677,dx=101,y=63,dy=2,z=-34961,dz=50] add glas
tag @e[type=villager,x=-2684,dx=65,y=63,dy=4,z=-35978,dz=37] add inve
tag @e[type=villager,x=-3833,dx=59,y=64,dy=16,z=-35438,dz=27] add tobe
#Assign recovery tag for Fife to allow immunocompromised to be less likely to recover.
execute as @e[type=villager,tag=fife,scores={Age=4..10},tag=immunocompromised] run tag @s add ic_recovery_fife
execute as @e[type=villager,tag=fife,scores={Age=20..39},tag=immunocompromised] run tag @s add ic_recovery_fife

#Assign commensals and RV to new villagers
execute as @e[type=villager,tag=edin] run function infect:assign_sequences_susceptible
execute as @e[type=villager,tag=glas] run function infect:assign_sequences_susceptible


#create scoreboard for dialogue scores
scoreboard objectives add Dialogue dummy
execute as @e[type=villager] at @s run scoreboard players set @s Dialogue 0
#now to tag villagers depending on the dialogue they will say
#dundee
#old people
tag @e[type=villager,tag=dund,scores={Dialogue=0,Age=5..},limit=1,sort=random] add complaint_1
execute as @e[tag=complaint_1] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=dund,scores={Dialogue=0,Age=5..},limit=1,sort=random] add complaint_2
execute as @e[tag=complaint_2] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=dund,scores={Dialogue=0,Age=5..},limit=1,sort=random] add shivery
execute as @e[tag=shivery] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=dund,scores={Dialogue=0,Age=5..},limit=1,sort=random] add pounding
execute as @e[tag=pounding] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=dund,scores={Dialogue=0,Age=5..},limit=1,sort=random] add faint
execute as @e[tag=faint] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=dund,scores={Dialogue=0,Age=5..},limit=1,sort=random] add spinning
execute as @e[tag=spinning] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=dund,scores={Dialogue=0,Age=5..},limit=1,sort=random] add complaint_daughter
execute as @e[tag=complaint_daughter] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=dund,scores={Dialogue=0,Age=5..},limit=1,sort=random] add bed
execute as @e[tag=bed] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=dund,scores={Dialogue=0,Age=5..},limit=1,sort=random] add book_club
execute as @e[tag=book_club] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=dund,scores={Dialogue=0,Age=5..},limit=1,sort=random] add cold
execute as @e[tag=cold] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=dund,scores={Dialogue=0,Age=5..},limit=20,sort=random] add cough_2
execute as @e[tag=cough_2] at @s run scoreboard players add @s Dialogue 1
#young people
tag @e[type=villager,tag=dund,scores={Dialogue=0,Age=..4},limit=1,sort=random] add morning_sick
execute as @e[tag=morning_sick] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=dund,scores={Dialogue=0,Age=..4},limit=1,sort=random] add small_headache
execute as @e[tag=small_headache] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=dund,scores={Dialogue=0,Age=..4},limit=1,sort=random] add fatigue_1
execute as @e[tag=fatigue_1] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=dund,scores={Dialogue=0,Age=..4},limit=1,sort=random] add questioning
execute as @e[tag=questioning] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=dund,scores={Dialogue=0,Age=..4},limit=1,sort=random] add short_friend
execute as @e[tag=short_friend] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=dund,scores={Dialogue=0,Age=..4},limit=1,sort=random] add sick_mum
execute as @e[tag=sick_mum] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=dund,scores={Dialogue=0,Age=..4},limit=1,sort=random] add hope
execute as @e[tag=hope] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=dund,scores={Dialogue=0,Age=..4},limit=1,sort=random] add sick_parents
execute as @e[tag=sick_parents] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=dund,scores={Dialogue=0,Age=..4},limit=1,sort=random] add holiday_hope
execute as @e[tag=holiday_hope] at @s run scoreboard players add @s Dialogue 1
#edinburgh
#female
tag @e[type=villager,tag=edin,tag=!male,scores={Dialogue=0,Age=..1},limit=1,sort=random] add little_bro
execute as @e[tag=little_bro] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=edin,tag=!male,scores={Dialogue=0,Age=..6},limit=1,sort=random] add soup
execute as @e[tag=soup] at @s run scoreboard players add @s Dialogue 1
#either
tag @e[type=villager,tag=edin,scores={Dialogue=0,Age=2..5},limit=1,sort=random] add sick_son
execute as @e[tag=sick_son] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=edin,scores={Dialogue=0,Age=2..},limit=1,sort=random] add sick_sons
execute as @e[tag=sick_sons] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=edin,scores={Dialogue=0,Age=..6},limit=1,sort=random] add dad_bed
execute as @e[tag=dad_bed] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=edin,scores={Dialogue=0,Age=..6},limit=1,sort=random] add sick_walk
execute as @e[tag=sick_walk] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=edin,scores={Dialogue=0},limit=1,sort=random] add chippy
execute as @e[tag=chippy] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=edin,scores={Dialogue=0},limit=1,sort=random] add bowling
execute as @e[tag=bowling] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=edin,scores={Dialogue=0,Age=..1},limit=3,sort=random] add school
execute as @e[tag=school] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=edin,scores={Dialogue=0,Age=..1},limit=1,sort=random] add gran
execute as @e[tag=gran] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=edin,scores={Dialogue=0,Age=..5},limit=1,sort=random] add uncles
execute as @e[tag=uncles] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=edin,scores={Dialogue=0},limit=1,sort=random] add doctor
execute as @e[tag=doctor] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=edin,scores={Dialogue=0},limit=1,sort=random] add tickly
execute as @e[tag=tickly] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=edin,scores={Dialogue=0},limit=1,sort=random] add stay_away
execute as @e[tag=stay_away] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=edin,scores={Dialogue=0},limit=1,sort=random] add sleepless_night
execute as @e[tag=sleepless_night] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=edin,scores={Dialogue=0},limit=1,sort=random] add stomach
execute as @e[tag=stomach] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=edin,scores={Dialogue=0},limit=1,sort=random] add hungry
execute as @e[tag=hungry] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=edin,scores={Dialogue=0},limit=1,sort=random] add throat
execute as @e[tag=throat] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=edin,scores={Dialogue=0,Age=2..},limit=1,sort=random] add interview
execute as @e[tag=interview] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=edin,scores={Dialogue=0},limit=1,sort=random] add somersaults
execute as @e[tag=somersaults] at @s run scoreboard players add @s Dialogue 1
#male
tag @e[type=villager,tag=edin,tag=!female,scores={Dialogue=0,Age=..1},limit=1,sort=random] add all_brothers
execute as @e[tag=all_brothers] at @s run scoreboard players add @s Dialogue 1
#fife
tag @e[type=villager,tag=fife,scores={Dialogue=0},limit=5,sort=random] add achoo_1
execute as @e[tag=achoo_1] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=fife,scores={Dialogue=0},limit=10,sort=random] add achoo_2
execute as @e[tag=achoo_2] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=fife,scores={Dialogue=0},limit=1,sort=random] add nose
execute as @e[tag=nose] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=fife,scores={Dialogue=0},limit=1,sort=random] add hay_fever
execute as @e[tag=hay_fever] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=fife,scores={Dialogue=0},limit=1,sort=random] add raw
execute as @e[tag=raw] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=fife,scores={Dialogue=0},limit=1,sort=random] add tissue
execute as @e[tag=tissue] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=fife,scores={Dialogue=0},limit=1,sort=random] add allergic
execute as @e[tag=allergic] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=fife,scores={Dialogue=0},limit=1,sort=random] add sneezing
execute as @e[tag=sneezing] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=fife,scores={Dialogue=0,Age=..5},limit=1,sort=random] add dad_sneeze
execute as @e[tag=dad_sneeze] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=fife,scores={Dialogue=0},limit=1,sort=random] add sister_tissues
execute as @e[tag=sister_tissues] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=fife,scores={Dialogue=0},limit=1,sort=random] add hoarding
execute as @e[tag=hoarding] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=fife,scores={Dialogue=0},limit=1,sort=random] add sneezdemic
execute as @e[tag=sneezdemic] at @s run scoreboard players add @s Dialogue 1
#glasgow
tag @e[type=villager,tag=glas,scores={Dialogue=0},limit=1,sort=random] add ill
execute as @e[tag=ill] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=glas,scores={Dialogue=0},limit=25,sort=random] add cough_2
execute as @e[tag=cough_2] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=glas,scores={Dialogue=0},limit=1,sort=random] add doctor_2
execute as @e[tag=doctor_2] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=glas,scores={Dialogue=0},limit=1,sort=random] add tomorrow
execute as @e[tag=tomorrow] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=glas,scores={Dialogue=0},limit=1,sort=random] add appointment
execute as @e[tag=appointment] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=glas,scores={Dialogue=0},limit=1,sort=random] add complaint_3
execute as @e[tag=complaint_3] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=glas,scores={Dialogue=0},limit=1,sort=random] add third_ill
execute as @e[tag=third_ill] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=glas,scores={Dialogue=0},limit=1,sort=random] add second_ill
execute as @e[tag=second_ill] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=glas,scores={Dialogue=0},limit=1,sort=random] add overflowing
execute as @e[tag=overflowing] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=glas,scores={Dialogue=0},limit=1,sort=random] add city_ill
execute as @e[tag=city_ill] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=glas,scores={Dialogue=0},limit=1,sort=random] add sick_friends
execute as @e[tag=sick_friends] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=glas,scores={Dialogue=0},limit=1,sort=random] add teachers
execute as @e[tag=teachers] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=glas,scores={Dialogue=0},limit=1,sort=random] add masks
execute as @e[tag=masks] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=glas,scores={Dialogue=0},limit=1,sort=random] add vaccine
execute as @e[tag=vaccine] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=glas,scores={Dialogue=0},limit=1,sort=random] add food_friend
execute as @e[tag=food_friend] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=glas,scores={Dialogue=0},limit=1,sort=random] add mad_city
execute as @e[tag=mad_city] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=glas,scores={Dialogue=0},limit=1,sort=random] add ill_twice
execute as @e[tag=ill_twice] at @s run scoreboard players add @s Dialogue 1
#inverness
tag @e[type=villager,tag=inve,scores={Dialogue=0},limit=1,sort=random] add yesterday
execute as @e[tag=yesterday] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=inve,scores={Dialogue=0},limit=1,sort=random] add awful
execute as @e[tag=awful] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=inve,scores={Dialogue=0},limit=1,sort=random] add jelly
execute as @e[tag=jelly] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=inve,scores={Dialogue=0},limit=15,sort=random] add cough_2
execute as @e[tag=cough_2] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=inve,scores={Dialogue=0},limit=8,sort=random] add cough_3
execute as @e[tag=cough_3] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=inve,scores={Dialogue=0},limit=1,sort=random] add water
execute as @e[tag=water] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=inve,scores={Dialogue=0},limit=1,sort=random] add night_cough
execute as @e[tag=night_cough] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=inve,scores={Dialogue=0},limit=1,sort=random] add asthma
execute as @e[tag=asthma] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=inve,scores={Dialogue=0},limit=1,sort=random] add tonsilitis
execute as @e[tag=tonsilitis] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=inve,scores={Dialogue=0},limit=1,sort=random] add arthritis
execute as @e[tag=arthritis] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=inve,scores={Dialogue=0},limit=1,sort=random] add eczema
execute as @e[tag=eczema] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=inve,scores={Dialogue=0},limit=1,sort=random] add elbow
execute as @e[tag=elbow] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=inve,scores={Dialogue=0,Age=..5},limit=1,sort=random] add fatigue_2
execute as @e[tag=fatigue_2] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=inve,scores={Dialogue=0},limit=1,sort=random] add sister_ill
execute as @e[tag=sister_ill] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=inve,scores={Dialogue=0},limit=1,sort=random] add today
execute as @e[tag=today] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=inve,scores={Dialogue=0},limit=1,sort=random] add miss
execute as @e[tag=miss] at @s run scoreboard players add @s Dialogue 1
#tobermory
tag @e[type=villager,tag=tobe,scores={Dialogue=0},limit=1,sort=random] add colour_1
execute as @e[tag=colour_1] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=tobe,scores={Dialogue=0},limit=1,sort=random] add colour_2
execute as @e[tag=colour_2] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=tobe,scores={Dialogue=0},limit=1,sort=random] add colour_3
execute as @e[tag=colour_3] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=tobe,scores={Dialogue=0},limit=1,sort=random] add ill_again
execute as @e[tag=ill_again] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=tobe,scores={Dialogue=0},limit=1,sort=random] add bed_2
execute as @e[tag=bed_2] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=tobe,scores={Dialogue=0},limit=1,sort=random] add hill
execute as @e[tag=hill] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=tobe,scores={Dialogue=0},limit=1,sort=random] add sister_ages
execute as @e[tag=sister_ages] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=tobe,scores={Dialogue=0},limit=1,sort=random] add three_times
execute as @e[tag=three_times] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=tobe,scores={Dialogue=0},limit=1,sort=random] add herd_immunity
execute as @e[tag=herd_immunity] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=tobe,scores={Dialogue=0},limit=1,sort=random] add keep_ill
execute as @e[tag=keep_ill] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=tobe,scores={Dialogue=0},limit=1,sort=random] add friend_visit
execute as @e[tag=friend_visit] at @s run scoreboard players add @s Dialogue 1
tag @e[type=villager,tag=tobe,scores={Dialogue=0},limit=1,sort=random] add five_times
execute as @e[tag=five_times] at @s run scoreboard players add @s Dialogue 1