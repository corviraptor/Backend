power grant @s dredgecombat:comboblade/validate_loadout

execute if score @s dredgecombat.ValidLoadout = #FAILURE dredgecombat.Constants run return 0
return 1