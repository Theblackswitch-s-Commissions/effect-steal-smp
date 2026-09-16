execute if entity @s[tag=es.has_owner] run return fail
tag @s add es.has_owner
function effect_steal:alchemy_table/handle_owner/init_owner

scoreboard players operation #search tbs.ID = @s es.owner_id
function effect_steal:alchemy_table/gui/update

execute unless score @s es.player_heads matches 1.. run function effect_steal:alchemy_table/ritual/reset
