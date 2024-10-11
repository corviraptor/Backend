scoreboard players set @s dredgecombat:ValidLoadout 0
tellraw @s { "text": "⚠ There are conflicting Move Tokens in this loadout!", "color": "#ff0018" }
tellraw @s { "text": "🛈 Use your Pick Block key while holding the Loadout Tool to open its Loadout.", "color": "#999999" }
return 0