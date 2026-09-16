
execute store success score #success temp run function effect_steal:alchemy_table/gui/brewing/check_recipe/check_reagent/init
execute if score #success temp matches 0 run return fail

execute store success score #success temp run function effect_steal:alchemy_table/gui/brewing/check_recipe/check_input/init
execute if score #success temp matches 0 run return fail

scoreboard players add @s es.brew_progress 1

return 1