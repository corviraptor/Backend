execute store result valid_loadout Variables function dredgecombat:comboblade/validate_loadout/main

execute store result valid_loadout Variables data get entity corviraptor cardinal_components."apoli:powers".Powers[{Type:"dredgecombat:comboblade/loadout_inventory"}].Data.Items[{tag:{Combo_Sword_Prototype:1b}}]

execute if score valid_loadout Variables >