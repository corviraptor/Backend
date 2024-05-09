scoreboard players remove @s crucibleFill 100
tellraw @s {"text":"You smelt enough materials in the crucible to create a Prime Alloy!","color":"dark_red","bold":true}
give @s firework_star{display:{Name:'{"text":"Prime Alloy","color":"light_purple","bold":true}',Lore:['{"text":"An alloy made from many materials,"}','{"text":"taking the best features from all"}','{"text":"of its ingredients. It can be used"}','{"text":"to craft masterwork items."}']},CustomModelData:555014,primeAlloy:1b,Enchantments:[{}],Explosion:{Type:0}} 1
