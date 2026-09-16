item replace entity @s container.0 from entity @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] weapon.mainhand {type: "set_count", count: 1}
tag @s add es.has_ingredient
playsound minecraft:block.decorated_pot.insert block @a ~ ~ ~ 1 1.2
playsound minecraft:block.trial_spawner.detect_player block @a ~ ~ ~ 1 2
particle minecraft:trial_spawner_detection ~ ~ ~ 0.1 0.1 0.1 0 10 force
scoreboard players add @e[type=minecraft:item_display, tag=es.alchemy_table, predicate=effect_steal:match_table_id, limit=1] es.player_heads 1
