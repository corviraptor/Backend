summon minecraft:husk ~ ~400 ~ {NoAI:1b,CustomName:"\"comboSwitchTemp\""}

data modify entity @e[limit=1, type=minecraft:husk, name="comboSwitchTemp"] HandItems[0] set from entity @s cardinal_components.apoli:powers.Powers[{Type:"dredgecombat:comboblade/comboblade_inventory"}].Data.Items[{id:"minecraft:netherite_axe"}]

item replace entity @s weapon.mainhand from entity @e[name=comboSwitchTemp,limit=1] weapon.mainhand

tp @e[name=comboSwitchTemp,limit=1] ~ -300 ~

#data get entity @s cardinal_components.apoli:powers.Powers[{Type:"dredgecombat:comboblade/comboblade_inventory"}].Data.Items[{id:"minecraft:netherite_axe"}]
#minecraft:netherite_axe{ComboBlade_Axe:1b, display:{Name:"{\"text\":\"Combo Blade [Axe Mode]\",\"color\":\"#ff0064\",\"bold\":true}"},Unbreakable:true} 1

item modify entity @s weapon.mainhand dredgecombat:comboblade/draw
item modify entity @s weapon.mainhand dredgecombat:comboblade/begin_draw
