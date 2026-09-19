




# -------------------------------
#  Check recipe finish                            
# -------------------------------

execute if score @s es.brew_progress matches 200..:
    scoreboard players operation #search tbs.ID = @s es.owner_id
    scoreboard players operation #bliss_level temp = @a[predicate=theblackswitch:__version__/__patch__/player_id/match_search,limit=1] es.effect.luck.level

    data modify storage effect_steal:alchemy_table brewing_recipe set from storage effect_steal:data_gen brewing_recipe
    function effect_steal:alchemy_table/gui/brewing/apply_recipe/loop

    # -------------------------------
    #  SFX                            
    # -------------------------------

    playsound minecraft:block.brewing_stand.brew block @a ~ ~ ~ 1 1

    # -------------------------------
    #  Remove the reagent and blaze                         
    # -------------------------------

    item modify block ~ ~ ~ container.2 {"type": "set_count","count": -1, "add": true}
    scoreboard players remove @s es.blaze 1

# -------------------------------
# Check any changes in the slots                            
# -------------------------------

data remove storage effect_steal:alchemy_table slots
data modify storage effect_steal:alchemy_table slots append from block ~ ~ ~ Items[{Slot:2b}]
data modify storage effect_steal:alchemy_table slots append from block ~ ~ ~ Items[{Slot:18b}]
data modify storage effect_steal:alchemy_table slots append from block ~ ~ ~ Items[{Slot:19b}]
data modify storage effect_steal:alchemy_table slots append from block ~ ~ ~ Items[{Slot:20b}]

data modify storage effect_steal:alchemy_table slot_check set from storage effect_steal:alchemy_table slots
execute store success score #success temp run data modify storage effect_steal:alchemy_table slot_check set from entity @s data.prev_slots

data modify entity @s data.prev_slots set from storage effect_steal:alchemy_table slots

# Skip the recipe looping if no slot changes are detected
execute if score #success temp matches 0 run return run execute if score @s es.brew_progress matches 1.. run scoreboard players add @s es.brew_progress 1

# -------------------------------
#  Check recipe progress                            
# -------------------------------

data modify storage effect_steal:alchemy_table brewing_recipe set from storage effect_steal:data_gen brewing_recipe
function effect_steal:alchemy_table/gui/brewing/check_recipe/loop