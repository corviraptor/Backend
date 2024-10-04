scoreboard players operation @s ComboBladeDrawTime = zero Constants
scoreboard players operation @s AbilityActive = zero Constants

scoreboard players set corviraptor AbilityActive 0

playsound item.axe.strip block @s ~ ~ ~ 3 0.5

cpm animate @s "comboblade.draw_attack.anticipation" 0
cpm animate @s "comboblade.draw_attack.release" 1