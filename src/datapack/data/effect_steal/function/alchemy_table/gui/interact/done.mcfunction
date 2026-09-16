import effect_steal:const as const

playsound minecraft:ui.button.click master @a[predicate=theblackswitch:__version__/__patch__/player_id/match_search,limit=1] ~ ~ ~ 0.25 1
scoreboard players set @s es.button_click 205

# Start the ritual only when the effect can be upgraded
for idx, effect in enumerate(const.effects):
    if effect.type == "positive" and effect.max_lvl > 0:
        execute if score @s es.selected_effect matches idx if score @s es.effect_level matches (effect.max_lvl, None) run return run playsound minecraft:block.note_block.bass ui @a[predicate=theblackswitch:__version__/__patch__/player_id/match_search,limit=1] ~ ~ ~ 1 0.75
    elif effect.type == "negative":
        execute if score @s es.selected_effect matches idx unless score @s es.effect_level matches 1.. run return run playsound minecraft:block.note_block.bass ui @a[predicate=theblackswitch:__version__/__patch__/player_id/match_search,limit=1] ~ ~ ~ 1 0.75

tag @s add es.will_init_ritual
