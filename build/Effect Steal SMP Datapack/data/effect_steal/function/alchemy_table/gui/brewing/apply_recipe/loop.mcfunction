execute unless data storage effect_steal:alchemy_table brewing_recipe[] run return fail
data remove storage effect_steal:alchemy_table curr_recipe
data modify storage effect_steal:alchemy_table curr_recipe set from storage effect_steal:alchemy_table brewing_recipe[0]
data remove storage effect_steal:alchemy_table brewing_recipe[0]
execute if function effect_steal:alchemy_table/gui/brewing/check_recipe/init run function effect_steal:alchemy_table/gui/brewing/apply_recipe/init
function effect_steal:alchemy_table/gui/brewing/apply_recipe/loop
