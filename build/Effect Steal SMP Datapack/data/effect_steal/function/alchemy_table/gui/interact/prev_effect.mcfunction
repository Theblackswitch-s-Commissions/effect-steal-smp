playsound minecraft:ui.button.click master @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] ~ ~ ~ 0.25 1
scoreboard players set @s es.button_click 105
scoreboard players remove @s es.selected_effect 1
execute if score @s es.selected_effect matches ..-1 run scoreboard players set @s es.selected_effect 13
function effect_steal:alchemy_table/gui/update
