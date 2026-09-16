execute if score @s es.button_click matches 1.. run scoreboard players remove @s es.button_click 1
execute if predicate effect_steal:button_click_done run function effect_steal:alchemy_table/gui/update/nested_execute_16
execute if score @s es.button_click matches 300.. run return run data modify storage effect_steal:alchemy_table gui.background set value "click:down"
execute if score @s es.button_click matches 200.. run return run data modify storage effect_steal:alchemy_table gui.background set value "click:middle"
execute if score @s es.button_click matches 100.. run return run data modify storage effect_steal:alchemy_table gui.background set value "click:up"
execute unless score @s es.button_click matches 1.. run return run data modify storage effect_steal:alchemy_table gui.background set value "click:none"
