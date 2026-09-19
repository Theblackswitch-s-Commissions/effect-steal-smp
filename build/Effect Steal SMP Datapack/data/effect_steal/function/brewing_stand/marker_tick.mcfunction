execute unless block ~ ~ ~ minecraft:brewing_stand run return run kill @s
scoreboard players operation #search tbs.ID = @s es.owner_id
scoreboard players operation #bliss_level temp = @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] es.effect.luck.level
execute if data block ~ ~ ~ {BrewTime: 1} run return run tag @s add es.brew_finished_next_tick
execute unless entity @s[tag=es.brew_finished_next_tick] run return run function effect_steal:brewing_stand/marker_tick/nested_return_0
tag @s remove es.brew_finished_next_tick
say hi
execute unless items block ~ ~ ~ container.0 *[minecraft:custom_data~{es.checked: true}] run function effect_steal:effect/chemical_bliss/upgrade_from_slot {source: "block ~ ~ ~ container.0"}
execute unless items block ~ ~ ~ container.1 *[minecraft:custom_data~{es.checked: true}] run function effect_steal:effect/chemical_bliss/upgrade_from_slot {source: "block ~ ~ ~ container.1"}
execute unless items block ~ ~ ~ container.2 *[minecraft:custom_data~{es.checked: true}] run function effect_steal:effect/chemical_bliss/upgrade_from_slot {source: "block ~ ~ ~ container.2"}
