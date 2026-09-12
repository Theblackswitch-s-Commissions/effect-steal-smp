execute unless block ~ ~ ~ minecraft:barrel run return run function effect_steal:alchemy_table/break
scoreboard players operation #search tbs.ID = @s es.owner_id
function effect_steal:alchemy_table/gui/check_input
function effect_steal:alchemy_table/gui/update
execute if score @s es.owner_id matches 0.. if block ~ ~ ~ minecraft:barrel[open=false] run function effect_steal:alchemy_table/handle_owner/reset_owner
execute if score #5 tbs.random_delay = #5 tbs.slow_tick run function effect_steal:alchemy_table/tick/nested_execute_0
execute if score #10 tbs.random_delay = #10 tbs.slow_tick run function effect_steal:alchemy_table/tick/nested_execute_1
execute if score #60 tbs.random_delay = #60 tbs.slow_tick run function effect_steal:alchemy_table/tick/nested_execute_2
