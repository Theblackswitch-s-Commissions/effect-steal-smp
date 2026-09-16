execute if items entity @s weapon.mainhand minecraft:player_head run return run function effect_steal:alchemy_table/ritual/interaction/nested_return_0
playsound minecraft:block.bone_block.place block @s ~ ~ ~ 1 0
title @s actionbar {text: "That's not a player head!", color: "red"}
