scoreboard objectives add Constants dummy
scoreboard players set one Constants 1
scoreboard players set zero Constants 0

scoreboard objectives add ComboBladeDrawTime dummy
scoreboard players set default ComboBladeDrawTime 5

scoreboard objectives add DrawingComboBlade dummy
scoreboard objectives add ValidComboBladeLoadout dummy

tellraw @a { "text": "Loaded DredgeCombat!", "color": "#FF0064" }