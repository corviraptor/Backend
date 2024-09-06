summon minecraft:husk ~ ~400 ~ {NoAI:1b,CustomName:"\"comboSwitchTemp\""}

data modify entity @e[limit=1, type=minecraft:husk, name="comboSwitchTemp"] HandItems[0] set from entity @s cardinal_components.apoli:powers.Powers[{Type:"dredgecombat:comboblade/comboblade_inventory"}].Data.Items[{id:"minecraft:netherite_sword"}]

item replace entity @s weapon.mainhand from entity @e[name=comboSwitchTemp,limit=1] weapon.mainhand

tp @e[name=comboSwitchTemp,limit=1] ~ -300 ~

item modify entity @s weapon.mainhand dredgecombat:comboblade/sheathe