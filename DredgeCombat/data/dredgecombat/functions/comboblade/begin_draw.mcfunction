power grant @s dredgecombat:comboblade/validate_loadout
execute if score @s ValidComboBladeLoadout = one Constants run function dredgecombat:comboblade/begin_draw_big
# execute if score @s ValidComboBladeLoadout != one Constants run function dredgecombat:comboblade/draw_small
execute as @s if score @s ValidComboBladeLoadout = zero Constants run tellraw @s { "text": "Your Combo Blade loadout is invalid!", "color": "#FF0000" }