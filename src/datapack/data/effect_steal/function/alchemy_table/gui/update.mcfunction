import effect_steal:const as const

# ==========================================================================================================================================
# ------------------------------------------------------------------------------------------------------------------------------------------
#                                                        COLLECT THE DATA                                                                       
# ------------------------------------------------------------------------------------------------------------------------------------------
# ==========================================================================================================================================

execute unless score @s es.selected_effect matches 0.. run scoreboard players set @s es.selected_effect 0

execute:
    scoreboard players set @s es.effect_level 0
    for idx, effect in enumerate(const.effects):
        execute if score @s es.selected_effect matches idx run return run scoreboard players operation @s es.effect_level = @a[predicate=theblackswitch:__version__/__patch__/player_id/match_search,limit=1] f"es.effect.{effect.id}.level"

# ==========================================================================================================================================
# ------------------------------------------------------------------------------------------------------------------------------------------
#                                                           FILL THE GUI                                                     
# ------------------------------------------------------------------------------------------------------------------------------------------
# ==========================================================================================================================================

# -------------------------------
#  Main item                            
# -------------------------------

item replace block ~ ~ ~ container.1 with minecraft:poisonous_potato[minecraft:item_model="effect_steal:gui/alchemy_table",minecraft:custom_model_data={strings:["", "", "", "", "", ""]},minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={"tbs.always_clear":true,"tbs.clear_when_dropped":true,"tbs.clear_misc":true,"es.technical_item":true}]

# -------------------------------
#  Placholders                            
# -------------------------------

# Use different custom data so the items can't be mass moved by double clicking
item replace block ~ ~ ~ container.0 with minecraft:poisonous_potato[minecraft:item_model="minecraft:air",minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={"tbs.always_clear":true,"tbs.clear_when_dropped":true,"tbs.clear_misc":true,"es.technical_item":true,"es.button":"recipe_book"}]
item replace block ~ ~ ~ container.6 with minecraft:poisonous_potato[minecraft:item_model="minecraft:air",minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={"tbs.always_clear":true,"tbs.clear_when_dropped":true,"tbs.clear_misc":true,"es.technical_item":true,"es.button":"prev"}]
item replace block ~ ~ ~ container.15 with minecraft:poisonous_potato[minecraft:item_model="minecraft:air",minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={"tbs.always_clear":true,"tbs.clear_when_dropped":true,"tbs.clear_misc":true,"es.technical_item":true,"es.button":"done"}]
item replace block ~ ~ ~ container.24 with minecraft:poisonous_potato[minecraft:item_model="minecraft:air",minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={"tbs.always_clear":true,"tbs.clear_when_dropped":true,"tbs.clear_misc":true,"es.technical_item":true,"es.button":"next"}]


raw item fill block ~ ~ ~ effect_steal:alchemy_table/placeholder with minecraft:poisonous_potato[minecraft:item_model="minecraft:air",minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={"tbs.always_clear":true,"tbs.clear_when_dropped":true,"tbs.clear_misc":true,"es.technical_item":true}]


# -------------------------------
#  Effect slots                            
# -------------------------------

execute:
    for idx, effect in enumerate(const.effects):
        execute if score @s es.selected_effect matches idx:
            if idx > 0: 
                prev_effect = const.effects[idx - 1]
            else:
                prev_effect = const.effects[-1]
            
            if idx < len(const.effects) - 1:
                next_effect = const.effects[idx + 1]
            else:
                next_effect = const.effects[0]

            # Collect the next and previous effect level
            execute store result storage effect_steal:alchemy_table effects.prev_lvl int 1 run scoreboard players operation #prev_effect_lvl temp = @a[predicate=theblackswitch:__version__/__patch__/player_id/match_search,limit=1] f"es.effect.{prev_effect.id}.level"
            execute store result storage effect_steal:alchemy_table effects.curr_lvl int 1 run scoreboard players get @s es.effect_level
            execute store result storage effect_steal:alchemy_table effects.next_lvl int 1 run scoreboard players operation #next_effect_lvl temp = @a[predicate=theblackswitch:__version__/__patch__/player_id/match_search,limit=1] f"es.effect.{next_effect.id}.level"
            
            # Check which effects are already active
            data modify storage effect_steal:alchemy_table effects merge value  {"prev_active": "active:false", "curr_active": "active:false", "next_active":"active:false"}
            execute if score #prev_effect_lvl temp matches 1.. run data modify storage effect_steal:alchemy_table effects.prev_active set value "active:true"
            execute if score @s es.effect_level matches 1.. run data modify storage effect_steal:alchemy_table effects.curr_active set value "active:true"
            execute if score #next_effect_lvl temp matches 1.. run data modify storage effect_steal:alchemy_table effects.next_active set value "active:true"

            # Check which effects reached max level
            data modify storage effect_steal:alchemy_table effects merge value  {"prev_max": "max:false", "curr_max": "max:false", "next_max":"max:false"}
            execute if score #prev_effect_lvl temp matches prev_effect.max_lvl run data modify storage effect_steal:alchemy_table effects.prev_max set value "max:true"
            execute if score @s es.effect_level matches effect.max_lvl run data modify storage effect_steal:alchemy_table effects.curr_max set value "max:true"
            execute if score #next_effect_lvl temp matches next_effect.max_lvl run data modify storage effect_steal:alchemy_table effects.next_max set value "max:true"

            # The level will be used for an item count so make sure it's never 0
            execute if data storage effect_steal:alchemy_table effects{prev_lvl:0} run data modify storage effect_steal:alchemy_table effects.prev_lvl set value 1
            execute if data storage effect_steal:alchemy_table effects{curr_lvl:0} run data modify storage effect_steal:alchemy_table effects.curr_lvl set value 1
            execute if data storage effect_steal:alchemy_table effects{next_lvl:0} run data modify storage effect_steal:alchemy_table effects.next_lvl set value 1

            with storage effect_steal:alchemy_table effects:
                raw f'$item replace block ~ ~ ~ container.8 with minecraft:poisonous_potato[minecraft:item_model="effect_steal:gui/effect",minecraft:custom_model_data={{strings:["effect:{prev_effect.id}","$(prev_active)","$(prev_max)"]}},minecraft:tooltip_display={{"hide_tooltip":true}},minecraft:custom_data={{"tbs.always_clear":true,"tbs.clear_when_dropped":true,"tbs.clear_misc":true,"es.technical_item":true}}] $(prev_lvl)'
                raw f'$item replace block ~ ~ ~ container.17 with minecraft:poisonous_potato[minecraft:item_model="effect_steal:gui/effect",minecraft:custom_model_data={{strings:["effect:{effect.id}","$(curr_active)","$(curr_max)"]}},minecraft:tooltip_display={{"hide_tooltip":true}},minecraft:custom_data={{"tbs.always_clear":true,"tbs.clear_when_dropped":true,"tbs.clear_misc":true,"es.technical_item":true}}] $(curr_lvl)'
                raw f'$item replace block ~ ~ ~ container.26 with minecraft:poisonous_potato[minecraft:item_model="effect_steal:gui/effect",minecraft:custom_model_data={{strings:["effect:{next_effect.id}","$(next_active)","$(next_max)"]}},minecraft:tooltip_display={{"hide_tooltip":true}},minecraft:custom_data={{"tbs.always_clear":true,"tbs.clear_when_dropped":true,"tbs.clear_misc":true,"es.technical_item":true}}] $(next_lvl)'


# ==========================================================================================================================================
# ------------------------------------------------------------------------------------------------------------------------------------------
#                                                        HANDLE GUI TEXTURE                                                                      
# ------------------------------------------------------------------------------------------------------------------------------------------
# ==========================================================================================================================================


# -------------------------------
#  Main Background                            
# -------------------------------

execute:

    # Handle the scoreboard timer
    execute if score @s es.button_click matches 1.. run scoreboard players remove @s es.button_click 1
    execute if predicate effect_steal:button_click_done:
        scoreboard players set @s es.button_click 0
        playsound minecraft:block.crafter.fail master @a[predicate=theblackswitch:__version__/__patch__/player_id/match_search,limit=1] ~ ~ ~ 1 0

    execute if score @s es.button_click matches 300.. run return run data modify storage effect_steal:alchemy_table gui.background set value "click:down"
    execute if score @s es.button_click matches 200.. run return run data modify storage effect_steal:alchemy_table gui.background set value "click:middle"
    execute if score @s es.button_click matches 100.. run return run data modify storage effect_steal:alchemy_table gui.background set value "click:up"
    execute unless score @s es.button_click matches 1.. run return run data modify storage effect_steal:alchemy_table gui.background set value "click:none"

# -------------------------------
#  Recipe Book                            
# -------------------------------

execute:
    execute if score @s es.recipe_book matches 1 run return run data modify storage effect_steal:alchemy_table gui.recipe_book set value "recipe_book:true"
    data modify storage effect_steal:alchemy_table gui.recipe_book set value "recipe_book:false"


# -------------------------------
#  Info boxes                            
# -------------------------------

execute:
    for idx, effect in enumerate(const.effects):

        # positive effects
        if effect.type == "positive":
            execute if score @s es.selected_effect matches idx if score @s es.effect_level matches 0 run return run data modify storage effect_steal:alchemy_table gui.info_box set value f"info_box:activate/{effect.id}"
            execute if score @s es.selected_effect matches idx if score @s es.effect_level matches 1.. run return run data modify storage effect_steal:alchemy_table gui.info_box set value f"info_box:upgrade/{effect.id}"
        
        else:
            execute if score @s es.selected_effect matches idx if score @s es.effect_level matches 0..1 run return run data modify storage effect_steal:alchemy_table gui.info_box set value f"info_box:clear/{effect.id}"
            execute if score @s es.selected_effect matches idx if score @s es.effect_level matches 1.. run return run data modify storage effect_steal:alchemy_table gui.info_box set value f"info_box:decrease/{effect.id}"

        data modify storage effect_steal:alchemy_table gui.info_box set value "info_box:none"

with storage effect_steal:alchemy_table gui:
    $item modify block ~ ~ ~ container.1 {"type":"minecraft:set_custom_model_data","strings":{"mode":"replace_section","values":["$(background)","$(recipe_book)","$(info_box)"]}}


function effect_steal:alchemy_table/gui/brewing/show_progress