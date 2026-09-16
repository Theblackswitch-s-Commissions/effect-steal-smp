execute store result score #bubble_frame temp run compute entity @s integer { "type": "minecraft:mod", "left": { "type": "minecraft:floor_div", "left": { "type": "minecraft:score", "target": "this", "score": "es.brew_progress" }, "right": 2 }, "right": 6 }
execute store result score #blaze_frame temp run compute entity @s integer { "type": "minecraft:floor_div", "left": { "type": "minecraft:score", "target": "this", "score": "es.blaze" }, "right": 2 }
execute if score @s es.blaze matches 1 run scoreboard players add #blaze_frame temp 1
execute store result score #arrow_frame temp run compute entity @s integer { "type": "minecraft:floor_div", "left": { "type": "minecraft:score", "target": "this", "score": "es.brew_progress" }, "right": 5 }
function effect_steal:alchemy_table/gui/brewing/show_progress/nested_execute_0
function effect_steal:alchemy_table/gui/brewing/show_progress/nested_execute_1
function effect_steal:alchemy_table/gui/brewing/show_progress/nested_execute_2
