advancement revoke @s only effect_steal:_event/open_barrel
tag @s add es.opened_barrel
function effect_steal:alchemy_table/handle_owner/on_open_barrel
tag @s remove es.opened_barrel
