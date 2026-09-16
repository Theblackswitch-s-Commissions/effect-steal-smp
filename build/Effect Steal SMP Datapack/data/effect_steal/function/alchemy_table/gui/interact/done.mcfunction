playsound minecraft:ui.button.click master @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] ~ ~ ~ 0.25 1
scoreboard players set @s es.button_click 205
execute if score @s es.selected_effect matches 0 if score @s es.effect_level matches 3.. run return run playsound minecraft:block.note_block.bass ui @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] ~ ~ ~ 1 0.75
execute if score @s es.selected_effect matches 1 if score @s es.effect_level matches 1.. run return run playsound minecraft:block.note_block.bass ui @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] ~ ~ ~ 1 0.75
execute if score @s es.selected_effect matches 2 if score @s es.effect_level matches 1.. run return run playsound minecraft:block.note_block.bass ui @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] ~ ~ ~ 1 0.75
execute if score @s es.selected_effect matches 3 if score @s es.effect_level matches 1.. run return run playsound minecraft:block.note_block.bass ui @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] ~ ~ ~ 1 0.75
execute if score @s es.selected_effect matches 5 if score @s es.effect_level matches 3.. run return run playsound minecraft:block.note_block.bass ui @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] ~ ~ ~ 1 0.75
execute if score @s es.selected_effect matches 7 if score @s es.effect_level matches 3.. run return run playsound minecraft:block.note_block.bass ui @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] ~ ~ ~ 1 0.75
execute if score @s es.selected_effect matches 8 if score @s es.effect_level matches 2.. run return run playsound minecraft:block.note_block.bass ui @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] ~ ~ ~ 1 0.75
execute if score @s es.selected_effect matches 11 unless score @s es.effect_level matches 1.. run return run playsound minecraft:block.note_block.bass ui @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] ~ ~ ~ 1 0.75
execute if score @s es.selected_effect matches 12 unless score @s es.effect_level matches 1.. run return run playsound minecraft:block.note_block.bass ui @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] ~ ~ ~ 1 0.75
execute if score @s es.selected_effect matches 13 unless score @s es.effect_level matches 1.. run return run playsound minecraft:block.note_block.bass ui @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] ~ ~ ~ 1 0.75
tag @s add es.will_init_ritual
