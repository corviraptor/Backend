give @s minecraft:netherite_axe{ComboBlade_Axe:1b, display:{Name:"{\"text\":\"Combo Blade [Axe Mode]\",\"color\":\"#ff0064\",\"bold\":true}"},Unbreakable:true} 1
give @s minecraft:netherite_sword{ComboBlade_Sword:1b, display:{Name:"{\"text\":\"Combo Blade [Sword Mode]\",\"color\":\"#00ff80\",\"bold\":true}"},Unbreakable:true} 1


item replace entity @s weapon.mainhand with minecraft:netherite_axe{ComboBlade_Axe:1b, display:{Name:"{\"text\":\"Combo Blade [Axe Mode]\",\"color\":\"#ff0064\",\"bold\":true}"},Unbreakable:true} 1
item modify entity @s weapon.mainhand dredgecombat:comboblade/draw
item modify entity @s weapon.mainhand dredgecombat:comboblade/begin_draw