execute if score @s AbilityActive = ONE Constants run return 0

# guard statement, sadly we dont have "execute if function" in this version 
# i'm not entirely sure what the actual return values are useful for in 1.20.1, 
# considering we're having to store this result anyway
function dredgecombat:comboblade/validate_loadout/main
execute unless score @s ValidLoadout = ONE Constants run return 0

execute if score @s ComboMeter >= RANK_A ComboMeter run function dredgecombat:comboblade/draw/begin_attack
execute if score @s ComboMeter < RANK_A ComboMeter run function dredgecombat:comboblade/draw/draw_small