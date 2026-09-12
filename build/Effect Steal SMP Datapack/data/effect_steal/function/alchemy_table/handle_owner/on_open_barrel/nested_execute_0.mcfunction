execute if entity @s[tag=es.has_owner] run return fail
tag @s add es.has_owner
function effect_steal:alchemy_table/handle_owner/init_owner
