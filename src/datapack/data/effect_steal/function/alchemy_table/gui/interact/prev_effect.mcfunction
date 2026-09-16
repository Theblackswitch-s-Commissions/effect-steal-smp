import effect_steal:const as const


playsound minecraft:ui.button.click master @a[predicate=theblackswitch:__version__/__patch__/player_id/match_search,limit=1] ~ ~ ~ 0.25 1
scoreboard players set @s es.button_click 105

max = len(const.effects) - 1
scoreboard players remove @s es.selected_effect 1
execute if score @s es.selected_effect matches ..-1 run scoreboard players set @s es.selected_effect max

# Update the gui
function effect_steal:alchemy_table/gui/update