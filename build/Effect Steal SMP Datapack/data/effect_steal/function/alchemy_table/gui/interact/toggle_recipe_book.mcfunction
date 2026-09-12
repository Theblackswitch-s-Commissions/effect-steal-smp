playsound minecraft:ui.button.click master @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] ~ ~ ~ 0.25 1
execute unless score @s es.recipe_book matches 0.. run scoreboard players set @s es.recipe_book 0
execute store success score @s es.recipe_book if score @s es.recipe_book matches 0
