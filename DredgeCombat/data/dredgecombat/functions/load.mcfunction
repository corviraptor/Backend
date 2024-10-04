scoreboard objectives add Constants dummy
scoreboard players set one Constants 1
scoreboard players set zero Constants 0

# if youre wondering why i didnt make this a resource, its because it adds like 10 lines of json, 
# reads and writes to NBT every time the timer ticks down, and adds an extra level of indentation 
# for what ends up being two lines of easily readable and editable code here. 
# it's not idiomatic Origins technique, but Origins doesn't have good syntax for this anyway.
scoreboard objectives add ComboBladeDrawTime dummy
scoreboard players set default ComboBladeDrawTime 5

# boolean flags, these probably dont need to be their own scoreboards.
scoreboard objectives add DrawingComboBlade dummy
scoreboard objectives add ValidComboBladeLoadout dummy

tellraw @a { "text": "Loaded DredgeCombat!", "color": "#FF0064" }