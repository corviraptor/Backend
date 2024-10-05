# this is primarily for testing. players will be able to get combo blade prototypes with different models
# through special quests or something.
item replace block ~ ~1 ~ container.9 with minecraft:netherite_axe 1
item modify block ~ ~1 ~ container.9 dredgecombat:comboblade/hf_blade_axe

item replace block ~ ~1 ~ container.10 with minecraft:netherite_sword 1
item modify block ~ ~1 ~ container.10 dredgecombat:comboblade/hf_blade_sword

# the custom model data here isn't necessary because the combo blade item itself has very little
# responsibility, its traits are entirely determined by the loadout after being sheathed or drawn once
item replace block ~ ~1 ~ container.0 with minecraft:netherite_axe 1
item modify block ~ ~1 ~ container.0 dredgecombat:comboblade/hf_blade_axe
item modify block ~ ~1 ~ container.0 dredgecombat:comboblade/combo_axe
power grant @s dredgecombat:comboblade/loadout