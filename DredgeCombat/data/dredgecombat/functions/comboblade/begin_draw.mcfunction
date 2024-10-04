power grant @s dredgecombat:comboblade/validate_loadout
# guard statement
execute unless score @s ValidComboBladeLoadout = one Constants run return 0

function dredgecombat:comboblade/begin_draw_attack
# execute if score @s ComboMeter < some_arbitrary_value Constants run function dredgecombat:comboblade/draw_small