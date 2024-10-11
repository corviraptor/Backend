execute unless score @s dredgecombat:MoveTime = #ZERO Constants run return 0 # guard statement

scoreboard players set @s dredgecombat:MoveTime 5

playsound block.note_block.bell block @s ~ ~ ~ 3 1.9

cpm animate @s "comboblade.draw.attack.anticipation" 1