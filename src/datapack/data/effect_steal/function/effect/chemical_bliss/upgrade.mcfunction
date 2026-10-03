import effect_steal:const as const
import math


item modify entity @s container.0 {
    "type": "minecraft:set_custom_data",
    "tag": {
        "es.test": true
    }
}

# -------------------------------
#  LVL 1                            
# -------------------------------

execute if score #bliss_level temp matches 1:
    for potion in const.potions:

        # Calculate the potion duration
        duration = potion.target_duration

        # Calculate the id for the translation key
        potion_id = potion.id.removeprefix("long_")
        potion_id = potion_id.removeprefix("strong_")

        # Don't upgrade the level
        amplifier = potion.level

        # Potion effect text color
        effect_color = "blue"
        if potion.type == "negative":
            effect_color = "red"

        # Modify each potion type into the correct one
        for potion_item in ["potion", "splash_potion", "lingering_potion"]:
            execute if items entity @s container.0 f'minecraft:{potion_item}[minecraft:potion_contents={{"potion": {potion.id}}}]':
                item modify entity @s container.0 [
                    {
                        "type": "set_components",
                        "components":{
                            "minecraft:potion_contents":{"potion": potion.id, "custom_effects":[{"id":f"minecraft:{potion.effect_name}","duration": duration,"amplifier": amplifier}]},
                            "minecraft:custom_name": {"translate": f"item.minecraft.{potion_item}.effect.{potion_id}", "italic": false},
                            "minecraft:tooltip_display":{hidden_components:["potion_contents"]},
                            "minecraft:lore": [
                                [
                                    {"text":"","italic":false,"color":"white"},
                                    {"text":"\uE001","font":"effect_steal:main"},
                                    {"text":" Effect Steal SMP ","color":"blue"},
                                    {"text":"\uE001","font":"effect_steal:main"}
                                ],
                                [{"translate": f"effect.minecraft.{potion.effect_name}", "color": effect_color, "italic": false}, {"text": f" {const.number_to_roman(amplifier+ 1)} "}, {"text": f"({const.tick_to_minutes(duration)})"}],
                                {"text": "", "italic": false},
                                {"text": "This potion got upgraded by chemical bliss!", "color":"gold","italic": false}
                            ]
                        }
                    }
                ]

# -------------------------------
#  LVL 2                            
# -------------------------------

execute if score #bliss_level temp matches 2:
    for potion in const.potions:

        # Calculate the potion duration
        duration = potion.target_duration

        # Calculate the id for the translation key
        potion_id = potion.id.removeprefix("long_")
        potion_id = potion_id.removeprefix("strong_")

        # Upgrade only positive effects
        if potion.type == "positive":
            amplifier = potion.target_level
        else:
            amplifier = potion.level

        # Potion effect text color
        effect_color = "blue"
        if potion.type == "negative":
            effect_color = "red"

        # Modify each potion type into the correct one
        for potion_item in ["potion", "splash_potion", "lingering_potion"]:
            execute if items entity @s container.0 f'minecraft:{potion_item}[minecraft:potion_contents={{"potion": {potion.id}}}]':
                item modify entity @s container.0 [
                    {
                        "type": "set_components",
                        "components":{
                            "minecraft:potion_contents":{"potion": potion.id, "custom_effects":[{"id":f"minecraft:{potion.effect_name}","duration": duration,"amplifier": amplifier}]},
                            "minecraft:custom_name": {"translate": f"item.minecraft.{potion_item}.effect.{potion_id}", "italic": false},
                            "minecraft:tooltip_display":{hidden_components:["potion_contents"]},
                            "minecraft:lore": [
                                [
                                    {"text":"","italic":false,"color":"white"},
                                    {"text":"\uE001","font":"effect_steal:main"},
                                    {"text":" Effect Steal SMP ","color":"blue"},
                                    {"text":"\uE001","font":"effect_steal:main"}
                                ],
                                [{"translate": f"effect.minecraft.{potion.effect_name}", "color": effect_color, "italic": false}, {"text": f" {const.number_to_roman(amplifier+ 1)} "}, {"text": f"({const.tick_to_minutes(duration)})"}],
                                {"text": "", "italic": false},
                                {"text": "This potion got upgraded by chemical bliss!", "color":"gold","italic": false}
                            ]
                        }
                    }
                ]

# -------------------------------
#  LVL 3                          
# -------------------------------

execute if score #bliss_level temp matches 3:
    for potion in const.potions:

        # Calculate the potion duration
        duration = const.even_more_duration(potion.target_duration)

        # Calculate the id for the translation key
        potion_id = potion.id.removeprefix("long_")
        potion_id = potion_id.removeprefix("strong_")

        # Amplifier is here the default potion level
        amplifier = potion.target_level

        # Potion effect text color
        effect_color = "blue"
        if potion.type == "negative":
            effect_color = "red"

        # Modify each potion type into the correct one
        for potion_item in ["potion", "splash_potion", "lingering_potion"]:
            execute if items entity @s container.0 f'minecraft:{potion_item}[minecraft:potion_contents={{"potion": {potion.id}}}]':
                item modify entity @s container.0 [
                    {
                        "type": "set_components",
                        "components":{
                            "minecraft:potion_contents":{"potion": potion.id, "custom_effects":[{"id":f"minecraft:{potion.effect_name}","duration": duration,"amplifier": amplifier}]},
                            "minecraft:custom_name": {"translate": f"item.minecraft.{potion_item}.effect.{potion_id}", "italic": false},
                            "minecraft:tooltip_display":{hidden_components:["potion_contents"]},
                            "minecraft:lore": [
                                [
                                    {"text":"","italic":false,"color":"white"},
                                    {"text":"\uE001","font":"effect_steal:main"},
                                    {"text":" Effect Steal SMP ","color":"blue"},
                                    {"text":"\uE001","font":"effect_steal:main"}
                                ],
                                [{"translate": f"effect.minecraft.{potion.effect_name}", "color": effect_color, "italic": false}, {"text": f" {const.number_to_roman(amplifier+ 1)} "}, {"text": f"({const.tick_to_minutes(duration)})"}],
                                {"text": "", "italic": false},
                                {"text": "This potion got upgraded by chemical bliss!", "color":"gold","italic": false}
                            ]
                        }
                    }
                ]