import effect_steal:const as const

# ==========================================================================================================================================
# ------------------------------------------------------------------------------------------------------------------------------------------
#                                                           FILL THE GUI                                                     
# ------------------------------------------------------------------------------------------------------------------------------------------
# ==========================================================================================================================================

item replace block ~ ~ ~ container.1 with minecraft:poisonous_potato[minecraft:item_model="effect_steal:gui/alchemy_table",minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={"tbs.always_clear":true,"tbs.clear_when_dropped":true,"tbs.clear_misc":true}]
raw item fill block ~ ~ ~ effect_steal:alchemy_table/locked_slots with minecraft:poisonous_potato[minecraft:item_model="minecraft:air",minecraft:tooltip_display={"hide_tooltip":true},minecraft:custom_data={"tbs.always_clear":true,"tbs.clear_when_dropped":true,"tbs.clear_misc":true}]

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
            execute if score @s es.selected_effect matches idx if score @s es.effect_level matches 1 run return run data modify storage effect_steal:alchemy_table gui.info_box set value f"info_box:clear/{effect.id}"
            execute if score @s es.selected_effect matches idx if score @s es.effect_level matches 1.. run return run data modify storage effect_steal:alchemy_table gui.info_box set value f"info_box:decrease/{effect.id}"

        data modify storage effect_steal:alchemy_table gui.info_box set value "info_box:none"

with storage effect_steal:alchemy_table gui:
    $item modify block ~ ~ ~ container.1 {"type":"minecraft:set_custom_model_data","strings":{"mode":"replace_all","values":["$(background)","$(recipe_book)","$(info_box)"]}}