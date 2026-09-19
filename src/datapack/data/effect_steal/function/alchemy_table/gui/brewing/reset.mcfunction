scoreboard players set @s es.brew_progress 0

# Update the prev slots
data remove storage effect_steal:alchemy_table slots
data modify storage effect_steal:alchemy_table slots append from block ~ ~ ~ Items[{Slot:2b}]
data modify storage effect_steal:alchemy_table slots append from block ~ ~ ~ Items[{Slot:18b}]
data modify storage effect_steal:alchemy_table slots append from block ~ ~ ~ Items[{Slot:19b}]
data modify storage effect_steal:alchemy_table slots append from block ~ ~ ~ Items[{Slot:20b}]

data modify entity @s data.prev_slots set from storage effect_steal:alchemy_table slots

function effect_steal:alchemy_table/gui/brewing/show_progress