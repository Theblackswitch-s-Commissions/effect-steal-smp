execute unless score @s es.selected_effect matches 0.. run scoreboard players set @s es.selected_effect 0
function effect_steal:alchemy_table/gui/update/nested_execute_0
item replace block ~ ~ ~ container.1 with minecraft:poisonous_potato[minecraft:item_model="effect_steal:gui/alchemy_table", minecraft:custom_model_data={strings: ["", "", "", "", "", ""]}, minecraft:tooltip_display={hide_tooltip: true}, minecraft:custom_data={tbs.always_clear: true, tbs.clear_when_dropped: true, tbs.clear_misc: true, es.technical_item: true}]
item replace block ~ ~ ~ container.0 with minecraft:poisonous_potato[minecraft:item_model="minecraft:air", minecraft:tooltip_display={hide_tooltip: true}, minecraft:custom_data={tbs.always_clear: true, tbs.clear_when_dropped: true, tbs.clear_misc: true, es.technical_item: true, es.button: "recipe_book"}]
item replace block ~ ~ ~ container.6 with minecraft:poisonous_potato[minecraft:item_model="minecraft:air", minecraft:tooltip_display={hide_tooltip: true}, minecraft:custom_data={tbs.always_clear: true, tbs.clear_when_dropped: true, tbs.clear_misc: true, es.technical_item: true, es.button: "prev"}]
item replace block ~ ~ ~ container.15 with minecraft:poisonous_potato[minecraft:item_model="minecraft:air", minecraft:tooltip_display={hide_tooltip: true}, minecraft:custom_data={tbs.always_clear: true, tbs.clear_when_dropped: true, tbs.clear_misc: true, es.technical_item: true, es.button: "done"}]
item replace block ~ ~ ~ container.24 with minecraft:poisonous_potato[minecraft:item_model="minecraft:air", minecraft:tooltip_display={hide_tooltip: true}, minecraft:custom_data={tbs.always_clear: true, tbs.clear_when_dropped: true, tbs.clear_misc: true, es.technical_item: true, es.button: "next"}]
item fill block ~ ~ ~ effect_steal:alchemy_table/placeholder with minecraft:poisonous_potato[minecraft:item_model="minecraft:air",minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={"tbs.always_clear":true,"tbs.clear_when_dropped":true,"tbs.clear_misc":true,"es.technical_item":true}]
function effect_steal:alchemy_table/gui/update/nested_execute_15
function effect_steal:alchemy_table/gui/update/nested_execute_17
function effect_steal:alchemy_table/gui/update/nested_execute_18
function effect_steal:alchemy_table/gui/update/nested_execute_19
function effect_steal:alchemy_table/gui/update/nested_macro_14 with storage effect_steal:alchemy_table gui
function effect_steal:alchemy_table/gui/brewing/show_progress
