
# -------------------------------
#  Buttons                            
# -------------------------------

# recipe book
execute unless items block ~ ~ ~ container.0 * run function effect_steal:alchemy_table/gui/interact/toggle_recipe_book

# Effect selecting arrows
execute unless items block ~ ~ ~ container.6 * run function effect_steal:alchemy_table/gui/interact/prev_effect
execute unless items block ~ ~ ~ container.24 * run function effect_steal:alchemy_table/gui/interact/next_effect

# The done button
execute unless items block ~ ~ ~ container.15 * run function effect_steal:alchemy_table/gui/interact/done

# Start the ritual after the button goes back up
execute if entity @s[tag=es.will_init_ritual] if score @s es.button_click matches 0:
    tag @s remove es.will_init_ritual
    function effect_steal:alchemy_table/ritual/init

# -------------------------------
#  Items                            
# -------------------------------

# Brewing fuel
execute unless score @s es.blaze matches 1.. if items block ~ ~ ~ container.4 *[minecraft:brewing_fuel~{}]:
    item modify block ~ ~ ~ container.4 {"type": "minecraft:set_count","count": -1,"add": true}
    scoreboard players set @s es.blaze 20

    # Check the recipes
    data modify storage effect_steal:alchemy_table brewing_recipe set from storage effect_steal:data_gen brewing_recipe
    function effect_steal:alchemy_table/gui/brewing/check_recipe/loop

# Recipes
execute:
    raw execute if score @s es.blaze matches 1.. if items block ~ ~ ~ container.2 * if items block ~ ~ ~ effect_steal:alchemy_table/potions *[!minecraft:custom_data~{"es.technical_item":true}] run return run function effect_steal:alchemy_table/gui/brewing/recipes
    function effect_steal:alchemy_table/gui/brewing/reset