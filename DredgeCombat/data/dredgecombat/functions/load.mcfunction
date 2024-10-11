# Constants that specifically apply to a certain scoreboard will be
# declared on that scoreboard. Regardless of scoreboard, all constants
# should be in ALL_CAPS.
scoreboard objectives add dredgecombat.Constants dummy
scoreboard players set #ONE dredgecombat.Constants 1
scoreboard players set #ZERO dredgecombat.Constants 0
scoreboard players set #TRUE dredgecombat.Constants 1
scoreboard players set #FALSE dredgecombat.Constants 0
scoreboard players set #FAILURE dredgecombat.Constants -1

# Only used for local variables in functions during a single tick's execution, 
# not for storing state across multiple ticks!
scoreboard objectives add dredgecombat.Variables dummy

# move timer
scoreboard objectives add dredgecombat.MoveTime dummy
scoreboard players set #TIMER_INTERVAL dredgecombat.MoveTime 2

# Boolean values
scoreboard objectives add dredgecombat.ActiveMove dummy
scoreboard objectives add dredgecombat.ValidLoadout dummy

function dredgecombat.load/combo_meter_init

tellraw @a { "text": "Loaded DredgeCombat!", "color": "#FF0064" }