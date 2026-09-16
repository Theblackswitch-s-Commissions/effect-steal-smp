execute unless data storage effect_steal:alchemy_table curr_recipe.output.components run data modify storage effect_steal:alchemy_table curr_recipe.output.components set value {}

# -------------------------------
#  Move to a path for macros                            
# -------------------------------

data modify storage effect_steal:alchemy_table curr_recipe.output_id set from storage effect_steal:alchemy_table curr_recipe.output.id
data modify storage effect_steal:alchemy_table curr_recipe.output_components set from storage effect_steal:alchemy_table curr_recipe.output.components
data modify storage effect_steal:alchemy_table curr_recipe.input_id set from storage effect_steal:alchemy_table curr_recipe.input.id
data modify storage effect_steal:alchemy_table curr_recipe.input_potion set from storage effect_steal:alchemy_table curr_recipe.input.potion

# -------------------------------
#  Apply the output item                            
# -------------------------------

execute if data storage effect_steal:alchemy_table curr_recipe.input.potion run return run function effect_steal:alchemy_table/gui/brewing/apply_recipe/modify/potion with storage effect_steal:alchemy_table curr_recipe
return run function effect_steal:alchemy_table/gui/brewing/apply_recipe/modify/item with storage effect_steal:alchemy_table curr_recipe