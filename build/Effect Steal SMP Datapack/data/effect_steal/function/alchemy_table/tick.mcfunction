execute unless block ~ ~ ~ minecraft:barrel run return run function effect_steal:alchemy_table/break
scoreboard players operation #search tbs.ID = @s es.owner_id
execute if entity @s[tag=es.has_ritual] run function effect_steal:alchemy_table/ritual/tick
function effect_steal:alchemy_table/gui/check_wrong_items
function effect_steal:alchemy_table/gui/check_input
execute if block ~ ~-1 ~ minecraft:hopper run data modify block ~ ~-1 ~ TransferCooldown set value 10000
execute if score #8 tbs.slow_tick matches 1 unless score @s es.brew_progress matches 1..200 run function effect_steal:alchemy_table/automation
function effect_steal:alchemy_table/tick/nested_execute_0
execute if score @s es.brew_progress matches 1.. if block ~ ~ ~ minecraft:barrel[open=true] run function effect_steal:alchemy_table/gui/brewing/show_progress
execute if score @s es.owner_id matches 0.. if block ~ ~ ~ minecraft:barrel[open=false] run function effect_steal:alchemy_table/handle_owner/reset_owner
execute if score #5 tbs.random_delay = #5 tbs.slow_tick run function effect_steal:alchemy_table/tick/nested_execute_1
execute if score #10 tbs.random_delay = #10 tbs.slow_tick run function effect_steal:alchemy_table/tick/nested_execute_2
execute if score #60 tbs.random_delay = #60 tbs.slow_tick run function effect_steal:alchemy_table/tick/nested_execute_3
