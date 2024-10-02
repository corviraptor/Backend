# this guys gonna hold our combo blade for us since we can't `item replace` from 
# an origins power inventory, and we can't `data modify` or `data merge` the player
summon minecraft:husk ~ ~400 ~ {NoAI:1b,CustomName:"\"comboSwitchTemp\""}

# if anyone has any suggestions to split this into two lines instead of one obscenely long line let me know
data modify entity @e[limit=1, type=minecraft:husk, name="comboSwitchTemp"] HandItems[0] set from entity @s cardinal_components.apoli:powers.Powers[{Type:"dredgecombat:comboblade/loadout"}].Data.Items[{tag:{Combo_Sword_Prototype:1b}}]

# the switcheroo
item replace entity @s weapon.mainhand from entity @e[name=comboSwitchTemp,limit=1] weapon.mainhand

# getting rid of the guy by dunking him into the void
tp @e[name=comboSwitchTemp,limit=1] ~ -300 ~

# this next section could be made to operate on the husk instead of the player such that
# the code for making a new combo blade (new_comboblade.mcfunction) can share this code 
# without it having to replace the player's weapon.mainhand slot. 
#
# in theory if the two places where combo blades are constructed in the code get out of
# sync because someone (probably me) forgets to change the duplicated code in
# new_comboblade.mcfunction, all the player would have to do is draw the comboblade to fix
# that, but i still don't like the code duplication especially since it's duplicated again
# for the axe and sword phases. 

# marking this as a real comboblade instead of a prototype
item modify entity @s weapon.mainhand dredgecombat:comboblade/sword_from_prototype

# constructing the combo blade via item modifiers
item modify entity @s weapon.mainhand dredgecombat:comboblade/sheathe
item modify entity @s weapon.mainhand dredgecombat:comboblade/sword_in_mainhand