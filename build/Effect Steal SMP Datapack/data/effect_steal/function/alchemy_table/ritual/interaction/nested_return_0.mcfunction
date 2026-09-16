scoreboard players operation #search tbs.ID = @s tbs.ID
execute as @e[type=minecraft:item_display, tag=es.alchemy_table_ingredient, tag=!es.has_ingredient, predicate=effect_steal:match_table_id, limit=1, sort=furthest] at @s run function effect_steal:alchemy_table/ritual/interaction/nested_execute_0
item modify entity @s weapon.mainhand {type: "set_count", count: -1, add: true}
