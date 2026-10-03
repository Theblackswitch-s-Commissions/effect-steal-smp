scoreboard players operation #search tbs.ID = @s es.owner_id
scoreboard players operation #bliss_level temp = @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] es.effect.luck.level
advancement grant @a[predicate=theblackswitch:v2.0/patch-5/player_id/match_search, limit=1] only effect_steal:main/brew_potion
data modify storage effect_steal:alchemy_table brewing_recipe set from storage effect_steal:data_gen brewing_recipe
function effect_steal:alchemy_table/gui/brewing/apply_recipe/loop
playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~ 1 1
item modify block ~ ~ ~ container.2 {type: "set_count", count: -1, add: true}
scoreboard players remove @s es.blaze 1
