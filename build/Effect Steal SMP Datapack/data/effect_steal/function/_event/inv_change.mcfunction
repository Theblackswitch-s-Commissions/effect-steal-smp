advancement revoke @s only effect_steal:_event/inv_change
tag @s add es.inv_change
schedule function effect_steal:_event/inv_change_schedule 1 replace
