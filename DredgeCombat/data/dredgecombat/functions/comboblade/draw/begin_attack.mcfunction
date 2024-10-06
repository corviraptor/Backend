execute store result score comboblade_drawing Variables run resource get corviraptor dredgecombat:abilities/timer_time

execute unless score comboblade_drawing Variables = ZERO Constants run return 0 # guard statement

resource set @s dredgecombat:abilities/timer_time 5

scoreboard players set corviraptor MoveInUse 1


playsound block.note_block.bell block @s ~ ~ ~ 3 1.9

cpm animate @s "comboblade.draw.attack.anticipation" 1