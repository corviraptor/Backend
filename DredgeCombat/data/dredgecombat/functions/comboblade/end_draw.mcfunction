item replace entity @s weapon.mainhand with minecraft:netherite_sword{ComboBlade_Sword:1b, display:{Name:"{\"text\":\"Combo Blade [Sword Mode]\",\"color\":\"#ff0064\",\"bold\":true}"},Unbreakable:true} 1 
playsound item.trident.return block @s ~ ~ ~ 2 0.5
playsound item.trident.throw block @s ~ ~ ~ 3 0.8

tellraw @a { "text": "Finished Drawing!", "color": "#00ff80" }