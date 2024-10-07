# Constants that specifically apply to a certain scoreboard will be
# declared on that scoreboard. Regardless of scoreboard, all constants
# should be in ALL_CAPS.
scoreboard objectives add Constants dummy
scoreboard players set #ONE Constants 1
scoreboard players set #ZERO Constants 0

scoreboard objectives add ComboMeter dummy
scoreboard players set #RANK_SSS ComboMeter 120
scoreboard players set #RANK_SS ComboMeter 90
scoreboard players set #RANK_S ComboMeter 60
scoreboard players set #RANK_A ComboMeter 30
scoreboard players set #RANK_B ComboMeter 15
scoreboard players set #RANK_C ComboMeter 07
scoreboard players set #RANK_D ComboMeter 01

# Only used internally in functions, not for storing state
scoreboard objectives add Variables dummy

# Boolean values
scoreboard objectives add MoveInUse dummy
scoreboard objectives add ActiveMove dummy
scoreboard objectives add ValidLoadout dummy

tellraw @a { "text": "Loaded DredgeCombat!", "color": "#FF0064" }