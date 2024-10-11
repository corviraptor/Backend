# this guys gonna hold our combo blade for us since we can't `item replace` from 
# an origins power inventory, and we can't `data modify` or `data merge` the player
summon minecraft:husk ~ ~400 ~ {NoAI:1b,CustomName:"\"comboSwitchTemp\""}

# if anyone has any suggestions to split this into two lines instead of one obscenely long line let me know
data modify entity @e[name="comboSwitchTemp",limit=1] HandItems[0] set from entity @s cardinal_components.apoli:powers.Powers[{Type:"dredgecombat:comboblade/loadout"}].Data.Items[{tag:{LoadoutTool:{Type:combo_axe, Prototype:1b}}}]

# give this combo blade functionality (this has to happen before adding the loadout powers because the item modifier will override them)
item modify entity @e[name="comboSwitchTemp",limit=1] weapon.mainhand dredgecombat:comboblade/combo_axe

# add powers from loadout
data modify entity @e[name="comboSwitchTemp",limit=1] HandItems[0].tag.Powers append from entity @s cardinal_components.apoli:powers.Powers[{Type:"dredgecombat:comboblade/loadout"}].Data.Items[{tag:{MoveToken:{ToolTypes:[axe]}}}].tag.Powers[]

# the switcheroo
item replace entity @s weapon.mainhand from entity @e[name=comboSwitchTemp,limit=1] weapon.mainhand

# getting rid of the guy by dunking him into the void
tp @e[name=comboSwitchTemp,limit=1] ~ -300 ~