execute if score @s AbilityActive = one Constants run return 0

# guard statement, sadly we dont have "execute if function" in this version 
# i'm not entirely sure what return values are useful for in 1.20.1, considering
# we're having to store this result anyway
execute store result valid_loadout Variables function dredgecombat:comboblade/validate_loadout/main
execute unless score valid_loadout Variables = one Constants run return 0

function dredgecombat:comboblade/begin_draw_attack
# execute if score @s ComboMeter < RankA ComboMeter run function dredgecombat:comboblade/draw_small