execute unless items block ~ ~ ~ container.0 * run function effect_steal:alchemy_table/gui/interact/toggle_recipe_book
execute unless items block ~ ~ ~ container.6 * run function effect_steal:alchemy_table/gui/interact/prev_effect
execute unless items block ~ ~ ~ container.24 * run function effect_steal:alchemy_table/gui/interact/next_effect
execute unless items block ~ ~ ~ container.15 * run function effect_steal:alchemy_table/gui/interact/done
execute if entity @s[tag=es.will_init_ritual] if score @s es.button_click matches 0 run function effect_steal:alchemy_table/gui/check_input/nested_execute_0
execute unless score @s es.blaze matches 1.. if items block ~ ~ ~ container.4 *[minecraft:brewing_fuel~{}] run function effect_steal:alchemy_table/gui/check_input/nested_execute_1
function effect_steal:alchemy_table/gui/check_input/nested_execute_2
