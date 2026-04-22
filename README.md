# Minecraft-based-SEIR-Model-Transfer-Validation-and-Localization
This repository is for the code used for my undergraduate dissertation Project "Minecraft-based SEIR Model Transfer, Validation, and Localization" at Zhejiang University-University of Edinburgh.

To begin with, download the Minecraft China Edition at mc.163.com. 

In Netease Minecraft Game Launcher, create a new world of java edition 1.21. Quit the game and find the world file’s location. Take HP laptop as an example: "C:\MCLDownload\Game\.minecraft\saves", open the world folder.

Download and copy all the files (except for the README.md and the "Python scripts" folder) in this GitHub repository and paste them into the world folder. Start the game, go into the world, and there it is.

To choose Edinburgh or Glasgow to start infection:

Enter "datapacks\custom\data\sampling\function\throttle.mcfunction", edit the last bit of line 12 as sampling:populations_edinburgh or sampling:populations_glasgow.

To start the sampling:

Type /function sampling:resume. 

To start the infection in the city:

Type /function life:start, or the lever in the lab spaces. 

To adjust the in-game parameters: 

Enter "datapacks\custom\data\infect\predicate"

To find the experimental record:

"MCLDownload\Game\.minecraft\logs\latest.log"

To translate the experimental record to CSV data:

In the GitHub repository, "Python scripts\latest_to_csv.ipynb"

To produce the figures in the thesis:

In the GitHub repository, "Python scripts\MC_ODE_Final_Script_Edin.ipynb" and "Python scripts\MC_ODE_Final_Script_Edin.ipynb"

To produce the tables:

In the GitHub repository, "Python scripts\tables.ipynb"
