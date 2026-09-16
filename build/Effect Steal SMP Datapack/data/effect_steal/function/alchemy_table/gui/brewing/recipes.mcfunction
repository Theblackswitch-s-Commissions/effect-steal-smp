execute if score @s es.brew_progress matches 200.. run function effect_steal:alchemy_table/gui/brewing/recipes/nested_execute_0
data remove storage effect_steal:alchemy_table slots
data modify storage effect_steal:alchemy_table slots append from block ~ ~ ~ Items[{Slot: 2b}]
data modify storage effect_steal:alchemy_table slots append from block ~ ~ ~ Items[{Slot: 18b}]
data modify storage effect_steal:alchemy_table slots append from block ~ ~ ~ Items[{Slot: 19b}]
data modify storage effect_steal:alchemy_table slots append from block ~ ~ ~ Items[{Slot: 20b}]
data modify storage effect_steal:alchemy_table slot_check set from storage effect_steal:alchemy_table slots
execute store success score #success temp run data modify storage effect_steal:alchemy_table slot_check set from entity @s data.prev_slots
data modify entity @s data.prev_slots set from storage effect_steal:alchemy_table slots
execute if score #success temp matches 0 run return run execute if score @s es.brew_progress matches 1.. run scoreboard players add @s es.brew_progress 1
data modify storage effect_steal:alchemy_table brewing_recipe set from storage effect_steal:data_gen brewing_recipe
function effect_steal:alchemy_table/gui/brewing/check_recipe/loop
