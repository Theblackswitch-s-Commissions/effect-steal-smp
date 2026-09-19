import effect_steal:const as const

kill @e[type=interaction,tag=es.ritual_blocking_interaction,predicate=effect_steal:match_table_id]
kill @e[type=item_display,tag=es.alchemy_table_ingredient,predicate=effect_steal:match_table_id]

function effect_steal:alchemy_table/ritual/reset

scoreboard players operation #search tbs.ID = @s es.owner_id

for idx, effect in enumerate(const.effects):
    if effect.type == "positive":
        execute if score @s es.selected_effect matches idx run scoreboard players add @a[predicate=theblackswitch:__version__/__patch__/player_id/match_search,limit=1] f"es.effect.{effect.id}.level" 1

    elif effect.type == "negative":
        execute if score @s es.selected_effect matches idx run scoreboard players remove @a[predicate=theblackswitch:__version__/__patch__/player_id/match_search,limit=1] f"es.effect.{effect.id}.level" 1

scoreboard players set @s es.animation 0
scoreboard players set @s es.player_heads 0
tag @s remove es.ritual_animation