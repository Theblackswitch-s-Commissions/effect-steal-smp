
# Launch the item
execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^.3
data modify entity @s Motion set from entity @s Pos
tp @s ~ ~ ~

# Modify the item to not be launched again
data remove entity @s Item.components."minecraft:custom_data"."es.should_launch"
data modify entity @s PickupDelay set value 40s