function dredgecombat:comboblade/construct_sword
playsound item.trident.return block @s ~ ~ ~ 2 0.5
playsound item.trident.throw block @s ~ ~ ~ 3 0.8

cpm animate @s "comboblade.draw_attack.release" 1
cpm animate @s "comboblade.draw_attack.anticipation" 0