execute store result storage effect_steal:alchemy_table effects.prev_lvl int 1 run scoreboard players operation #prev_effect_lvl temp = @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] es.effect.chemical_bliss.level
execute store result storage effect_steal:alchemy_table effects.curr_lvl int 1 run scoreboard players get @s es.effect_level
execute store result storage effect_steal:alchemy_table effects.next_lvl int 1 run scoreboard players operation #next_effect_lvl temp = @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] es.effect.dolphins_grace.level
data modify storage effect_steal:alchemy_table effects merge value {prev_active: "active:false", curr_active: "active:false", next_active: "active:false"}
execute if score #prev_effect_lvl temp matches 1.. run data modify storage effect_steal:alchemy_table effects.prev_active set value "active:true"
execute if score @s es.effect_level matches 1.. run data modify storage effect_steal:alchemy_table effects.curr_active set value "active:true"
execute if score #next_effect_lvl temp matches 1.. run data modify storage effect_steal:alchemy_table effects.next_active set value "active:true"
data modify storage effect_steal:alchemy_table effects merge value {prev_max: "max:false", curr_max: "max:false", next_max: "max:false"}
execute if score #prev_effect_lvl temp matches 3 run data modify storage effect_steal:alchemy_table effects.prev_max set value "max:true"
execute if score @s es.effect_level matches 1 run data modify storage effect_steal:alchemy_table effects.curr_max set value "max:true"
execute if score #next_effect_lvl temp matches 1 run data modify storage effect_steal:alchemy_table effects.next_max set value "max:true"
execute if data storage effect_steal:alchemy_table effects{prev_lvl: 0} run data modify storage effect_steal:alchemy_table effects.prev_lvl set value 1
execute if data storage effect_steal:alchemy_table effects{curr_lvl: 0} run data modify storage effect_steal:alchemy_table effects.curr_lvl set value 1
execute if data storage effect_steal:alchemy_table effects{next_lvl: 0} run data modify storage effect_steal:alchemy_table effects.next_lvl set value 1
function effect_steal:alchemy_table/gui/update/nested_macro_1 with storage effect_steal:alchemy_table effects
