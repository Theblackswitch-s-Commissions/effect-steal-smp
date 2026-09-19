advancement revoke @s only effect_steal:_event/open_brewing_stand

tag @s add es.opened_brewing_stand
execute at @s anchored eyes run function effect_steal:brewing_stand/raycast
tag @s remove es.opened_brewing_stand