scoreboard objectives add Constants dummy
scoreboard players set one Constants 1
scoreboard players set zero Constants 0

scoreboard objectives add Variables dummy

# if youre wondering why i didnt make this a resource, its because it adds like 10 lines of json, 
# reads and writes to NBT every time the timer ticks down, and adds an extra level of indentation 
# for what ends up being two lines of easily readable and editable code here. 
# it's not idiomatic Origins technique, but Origins doesn't have good syntax for this anyway.
scoreboard objectives add ComboBladeDrawTime dummy
scoreboard players set default ComboBladeDrawTime 5

scoreboard objectives add ComboMeter dummy
scoreboard players set RankSSS ComboMeter 120
scoreboard players set RankSS ComboMeter 90
scoreboard players set RankS ComboMeter 60
scoreboard players set RankA ComboMeter 30
scoreboard players set RankB ComboMeter 15
scoreboard players set RankC ComboMeter 07
scoreboard players set RankD ComboMeter 01

# boolean flags, these probably dont need to be their own scoreboards but i'm too lazy to
# figure that out right now
scoreboard objectives add AbilityActive dummy

tellraw @a { "text": "Loaded DredgeCombat!", "color": "#FF0064" }