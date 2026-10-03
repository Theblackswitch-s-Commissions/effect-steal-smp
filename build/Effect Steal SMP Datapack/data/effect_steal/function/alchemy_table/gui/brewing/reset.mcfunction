scoreboard players set @s es.brew_progress 0
data remove storage effect_steal:alchemy_table slots
data modify storage effect_steal:alchemy_table slots append from block ~ ~ ~ Items[{Slot: 2b}]
data modify storage effect_steal:alchemy_table slots append from block ~ ~ ~ Items[{Slot: 18b}]
data modify storage effect_steal:alchemy_table slots append from block ~ ~ ~ Items[{Slot: 19b}]
data modify storage effect_steal:alchemy_table slots append from block ~ ~ ~ Items[{Slot: 20b}]
data remove storage effect_steal:alchemy_table potions
data modify storage effect_steal:alchemy_table potions append from block ~ ~ ~ Items[{Slot: 18b}]
data modify storage effect_steal:alchemy_table potions append from block ~ ~ ~ Items[{Slot: 19b}]
data modify storage effect_steal:alchemy_table potions append from block ~ ~ ~ Items[{Slot: 20b}]
data modify entity @s data.prev_slots set from storage effect_steal:alchemy_table slots
data modify entity @s data.prev_potions set from storage effect_steal:alchemy_table potions
item modify entity @s container.0 {type: "set_custom_model_data", strings: {mode: "replace_all", values: ["flask_left:empty", "flask_middle:empty", "flask_right:empty"]}}
execute if items block ~ ~ ~ container.18 #minecraft:brewing_potion_inputs run item modify entity @s container.0 {type: "set_custom_model_data", strings: {mode: "replace_section", values: ["flask_left:potion"], offset: 0}}
execute if items block ~ ~ ~ container.19 #minecraft:brewing_potion_inputs run item modify entity @s container.0 {type: "set_custom_model_data", strings: {mode: "replace_section", values: ["flask_middle:potion"], offset: 1}}
execute if items block ~ ~ ~ container.20 #minecraft:brewing_potion_inputs run item modify entity @s container.0 {type: "set_custom_model_data", strings: {mode: "replace_section", values: ["flask_right:potion"], offset: 2}}
function effect_steal:alchemy_table/gui/brewing/show_progress
