




# -------------------------------
#  Check recipe finish                            
# -------------------------------

execute if score @s es.brew_progress matches 200..:
    scoreboard players operation #search tbs.ID = @s es.owner_id
    scoreboard players operation #bliss_level temp = @a[predicate=theblackswitch:__version__/__patch__/player_id/match_search,limit=1] es.effect.luck.level

    advancement grant @a[predicate=theblackswitch:__version__/__patch__/player_id/match_search,limit=1] only effect_steal:main/brew_potion

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
#  Detect a change in the potions                            
# -------------------------------

data remove storage effect_steal:alchemy_table potions
data modify storage effect_steal:alchemy_table potions append from block ~ ~ ~ Items[{Slot:18b}]
data modify storage effect_steal:alchemy_table potions append from block ~ ~ ~ Items[{Slot:19b}]
data modify storage effect_steal:alchemy_table potions append from block ~ ~ ~ Items[{Slot:20b}]

execute store result score #curr_count temp if data storage effect_steal:alchemy_table potions[]
execute store result score #prev_count temp if data entity @s data.prev_potions[]

data modify storage effect_steal:alchemy_table slot_check set from storage effect_steal:alchemy_table potions
execute store success score #success temp run data modify storage effect_steal:alchemy_table slot_check set from entity @s data.prev_potions

data modify entity @s data.prev_potions set from storage effect_steal:alchemy_table potions

execute if score #success temp matches 1 if score #curr_count temp >= #prev_count temp:
    playsound minecraft:item.armor.equip_chain block @a ~ ~ ~ 0.6 1
    playsound minecraft:item.bottle.fill block @a ~ ~ ~ 0.25 1.5
    playsound minecraft:block.chain.step block @a ~ ~ ~ 0.3 0.8

item modify entity @s container.0 {type:"set_custom_model_data",strings:{mode:"replace_all",values:["flask_left:empty","flask_middle:empty","flask_right:empty"]}}
execute if items block ~ ~ ~ container.18 #minecraft:brewing_potion_inputs run item modify entity @s container.0 {type:"set_custom_model_data",strings:{mode:"replace_section",values:["flask_left:potion"],offset:0}}
execute if items block ~ ~ ~ container.19 #minecraft:brewing_potion_inputs run item modify entity @s container.0 {type:"set_custom_model_data",strings:{mode:"replace_section",values:["flask_middle:potion"],offset:1}}
execute if items block ~ ~ ~ container.20 #minecraft:brewing_potion_inputs run item modify entity @s container.0 {type:"set_custom_model_data",strings:{mode:"replace_section",values:["flask_right:potion"],offset:2}}

# -------------------------------
#  Check recipe progress                            
# -------------------------------

data modify storage effect_steal:alchemy_table brewing_recipe set from storage effect_steal:data_gen brewing_recipe
function effect_steal:alchemy_table/gui/brewing/check_recipe/loop