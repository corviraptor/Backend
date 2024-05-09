execute at @s if predicate dredgeforge:holding_crucible_mats run playsound minecraft:block.lava.extinguish block @s ~ ~ ~
execute if entity @s[nbt={SelectedItem:{id:"minecraft:quartz"}}] run scoreboard players add @s crucibleFill 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:raw_copper"}}] run scoreboard players add @s crucibleFill 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:copper_ingot"}}] run scoreboard players add @s crucibleFill 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_ingot"}}] run scoreboard players add @s crucibleFill 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:raw_iron"}}] run scoreboard players add @s crucibleFill 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:raw_gold"}}] run scoreboard players add @s crucibleFill 5
execute if entity @s[nbt={SelectedItem:{id:"minecraft:gold_ingot"}}] run scoreboard players add @s crucibleFill 5
execute if entity @s[nbt={SelectedItem:{id:"minecraft:amethyst_shard"}}] run scoreboard players add @s crucibleFill 5
execute if entity @s[nbt={SelectedItem:{id:"minecraft:emerald"}}] run scoreboard players add @s crucibleFill 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond"}}] run scoreboard players add @s crucibleFill 10
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_scrap"}}] run scoreboard players add @s crucibleFill 25
execute if entity @s[nbt={SelectedItem:{id:"minecraft:netherite_ingot"}}] run scoreboard players add @s crucibleFill 100
execute as @s if predicate dredgeforge:holding_crucible_mats run item modify entity @s weapon.mainhand dredgeforge:reduceby1
execute at @s as @s if entity @s[scores={crucibleFill=100..}] run function dredgeforge:curciblefilled
execute as @s run advancement revoke @s only dredgeforge:crucible/root