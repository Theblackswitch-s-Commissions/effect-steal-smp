kill @e[type=interaction, tag=es.ritual_blocking_interaction, predicate=effect_steal:match_table_id]
kill @e[type=item_display, tag=es.alchemy_table_ingredient, predicate=effect_steal:match_table_id]
function effect_steal:alchemy_table/ritual/reset
scoreboard players operation #search tbs.ID = @s es.owner_id
execute if score @s es.selected_effect matches 0 run scoreboard players add @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] es.effect.luck.level 1
execute if score @s es.selected_effect matches 1 run scoreboard players add @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] es.effect.conduit_power.level 1
execute if score @s es.selected_effect matches 2 run scoreboard players add @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] es.effect.dolphins_grace.level 1
execute if score @s es.selected_effect matches 3 run scoreboard players add @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] es.effect.fire_resistance.level 1
execute if score @s es.selected_effect matches 4 run scoreboard players add @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] es.effect.haste.level 1
execute if score @s es.selected_effect matches 5 run scoreboard players add @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] es.effect.health_boost.level 1
execute if score @s es.selected_effect matches 6 run scoreboard players add @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] es.effect.jump_boost.level 1
execute if score @s es.selected_effect matches 7 run scoreboard players add @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] es.effect.unluck.level 1
execute if score @s es.selected_effect matches 8 run scoreboard players add @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] es.effect.resistance.level 1
execute if score @s es.selected_effect matches 9 run scoreboard players add @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] es.effect.speed.level 1
execute if score @s es.selected_effect matches 10 run scoreboard players add @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] es.effect.strength.level 1
execute if score @s es.selected_effect matches 11 run scoreboard players remove @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] es.effect.mining_fatigue.level 1
execute if score @s es.selected_effect matches 12 run scoreboard players remove @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] es.effect.slowness.level 1
execute if score @s es.selected_effect matches 13 run scoreboard players remove @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] es.effect.weakness.level 1
scoreboard players set @s es.animation 0
scoreboard players set @s es.player_heads 0
tag @s remove es.ritual_animation
