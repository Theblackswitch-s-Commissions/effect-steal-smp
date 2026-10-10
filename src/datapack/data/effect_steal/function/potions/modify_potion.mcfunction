
execute store result storage effect_steal:potion id int 1 run scoreboard players add #es.potion_item_id tbs.server_data 1

# Modify the potion item:
# Make it stack to 16 inside a bundle
# Give it an id so it doesn't stack inside the inventory
# Make it instantly consumable
$item modify entity @s container.$(slot) effect_steal:modify_potion