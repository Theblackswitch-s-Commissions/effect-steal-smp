item replace block ~ ~ ~ container.1 with minecraft:poisonous_potato[minecraft:item_model="effect_steal:gui/alchemy_table", minecraft:tooltip_display={hide_tooltip: true}, minecraft:custom_data={tbs.always_clear: true, tbs.clear_when_dropped: true, tbs.clear_misc: true}]
item fill block ~ ~ ~ effect_steal:alchemy_table/locked_slots with minecraft:poisonous_potato[minecraft:item_model="minecraft:air",minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={"tbs.always_clear":true,"tbs.clear_when_dropped":true,"tbs.clear_misc":true}]
function effect_steal:alchemy_table/gui/update/nested_execute_1
function effect_steal:alchemy_table/gui/update/nested_execute_2
function effect_steal:alchemy_table/gui/update/nested_execute_3
function effect_steal:alchemy_table/gui/update/nested_macro_0 with storage effect_steal:alchemy_table gui
