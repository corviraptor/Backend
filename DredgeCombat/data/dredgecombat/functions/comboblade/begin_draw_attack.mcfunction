execute unless score @s ComboBladeDrawTime = zero Constants run return 0
execute if score @s ComboBladeDrawTime = zero Constants run scoreboard players operation @s ComboBladeDrawTime = default ComboBladeDrawTime

scoreboard players set corviraptor AbilityActive 1


playsound block.note_block.bell block @s ~ ~ ~ 3 1.9

cpm animate @s "comboblade.draw_attack.anticipation" 1