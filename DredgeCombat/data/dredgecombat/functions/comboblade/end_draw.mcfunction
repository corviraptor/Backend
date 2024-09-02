function dredgecombat:comboblade/construct_sword
playsound item.trident.return block @s ~ ~ ~ 2 0.5
playsound item.trident.throw block @s ~ ~ ~ 3 0.8

tellraw @a { "text": "Finished Drawing!", "color": "#00ff80" }