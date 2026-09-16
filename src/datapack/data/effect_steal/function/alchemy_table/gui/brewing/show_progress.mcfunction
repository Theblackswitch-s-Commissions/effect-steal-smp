# Display all the progress bar values on the item

# -------------------------------
#  Calculate the progress values                            
# -------------------------------



raw execute store result score #bubble_frame temp run compute entity @s integer { \
	"type": "minecraft:mod", \
	"left": { \
		"type": "minecraft:floor_div", \
		"left": { \
			"type": "minecraft:score", \
			"target": "this", \
			"score": "es.brew_progress" \
		}, \
		"right": 2 \
	}, \
	"right": 6 \
}

raw execute store result score #blaze_frame temp run compute entity @s integer { \
	"type": "minecraft:floor_div", \
	"left": { \
		"type": "minecraft:score", \
		"target": "this", \
		"score": "es.blaze" \
	}, \
	"right": 2 \
}

execute if score @s es.blaze matches 1 run scoreboard players add #blaze_frame temp 1

raw execute store result score #arrow_frame temp run compute entity @s integer { \
	"type": "minecraft:floor_div", \
	"left": { \
		"type": "minecraft:score", \
		"target": "this", \
		"score": "es.brew_progress" \
	}, \
	"right": 5 \
}


# -------------------------------
#  Modify the custom model data                            
# -------------------------------

# ======= Bubbles =======
execute:
    for i in range(1, 6):
        execute if score #bubble_frame temp matches i run return run item modify block ~ ~ ~ container.1 {"type":"set_custom_model_data","strings":{"mode":"replace_section","offset":3,"values":[f"bubble:{i}"]}}

    item modify block ~ ~ ~ container.1 {"type":"set_custom_model_data","strings":{"mode":"replace_section","offset":3,"values":["bubble:0"]}}

# ======= Blaze =======
execute:
    for i in range(1, 11):
        execute if score #blaze_frame temp matches i run return run item modify block ~ ~ ~ container.1 {"type":"set_custom_model_data","strings":{"mode":"replace_section","offset":4,"values":[f"blaze:{i}"]}}

    item modify block ~ ~ ~ container.1 {"type":"set_custom_model_data","strings":{"mode":"replace_section","offset":4,"values":["blaze:0"]}}

# ======= Blaze =======
execute:
    for i in range(1, 41):
        execute if score #arrow_frame temp matches i run return run item modify block ~ ~ ~ container.1 {"type":"set_custom_model_data","strings":{"mode":"replace_section","offset":5,"values":[f"arrow:{i}"]}}

    item modify block ~ ~ ~ container.1 {"type":"set_custom_model_data","strings":{"mode":"replace_section","offset":5,"values":["arrow:0"]}}