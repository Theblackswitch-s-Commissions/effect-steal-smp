import effect_steal:const as const


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

        # increase duration
        execute if items entity @s container.0 *[minecraft:potion_contents={"potion": potion.id}]:
            item modify entity @s container.0 {"type":"set_components","components":{"minecraft:potion_duration_scale": potion.target_duration}}

# -------------------------------
#  LVL 2                            
# -------------------------------

execute if score #bliss_level temp matches 2:
    for potion in const.potions:

        # increase duration
        execute if items entity @s container.0 *[minecraft:potion_contents={"potion": potion.id}]:
            item modify entity @s container.0 {"type":"set_components","components":{"minecraft:potion_duration_scale": potion.target_duration}}

        # increase level
        if potion.type == "positive":
            potion_id = potion.id.removeprefix("long_")
            potion_id = potion_id.removeprefix("strong_")

            amplifier = potion.target_level - 1

            execute if items entity @s container.0 minecraft:potion[minecraft:potion_contents={"potion": potion.id}]:
                item modify entity @s container.0 [
                    {
                        "type": "set_components",
                        "components":{
                            "minecraft:potion_contents":{"custom_effects":[{"id":f"minecraft:{potion.effect_name}","duration": potion.duration,"amplifier": amplifier}]},
                            "minecraft:custom_name": {"translate": f"item.minecraft.potion.effect.{potion_id}", "italic": false}
                        }
                    }
                ]

            execute if items entity @s container.0 minecraft:splash_potion[minecraft:potion_contents={"potion": potion.id}]:
                item modify entity @s container.0 [
                    {
                        "type": "set_components",
                        "components":{
                            "minecraft:potion_contents":{"custom_effects":[{"id":f"minecraft:{potion.effect_name}","duration": potion.duration,"amplifier": amplifier}]},
                            "minecraft:custom_name": {"translate": f"item.minecraft.splash_potion.effect.{potion_id}", "italic": false}
                        }
                    }
                ]

            execute if items entity @s container.0 minecraft:lingering_potion[minecraft:potion_contents={"potion": potion.id}]:
                item modify entity @s container.0 [
                    {
                        "type": "set_components",
                        "components":{
                            "minecraft:potion_contents":{"custom_effects":[{"id":f"minecraft:{potion.effect_name}","duration": potion.duration,"amplifier": amplifier}]},
                            "minecraft:custom_name": {"translate": f"item.minecraft.lingering_potion.effect.{potion_id}", "italic": false}
                        }
                    }
                ]

# -------------------------------
#  LVL 3                          
# -------------------------------

execute if score #bliss_level temp matches 3:
    for potion in const.potions:

        # increase duration
        duration = const.even_more_duration(potion.target_duration)

        execute if items entity @s container.0 *[minecraft:potion_contents={"potion": potion.id}]:
            item modify entity @s container.0 {"type":"set_components","components":{"minecraft:potion_duration_scale": duration}}

        # increase level
        potion_id = potion.id.removeprefix("long_")
        potion_id = potion_id.removeprefix("strong_")

        amplifier = potion.target_level - 1

        execute if items entity @s container.0 minecraft:potion[minecraft:potion_contents={"potion": potion.id}]:
            item modify entity @s container.0 [
                {
                    "type": "set_components",
                    "components":{
                        "minecraft:potion_contents":{"custom_effects":[{"id":f"minecraft:{potion.effect_name}","duration": potion.duration,"amplifier": amplifier}]},
                        "minecraft:custom_name": {"translate": f"item.minecraft.potion.effect.{potion_id}", "italic": false}
                    }
                }
            ]

        execute if items entity @s container.0 minecraft:splash_potion[minecraft:potion_contents={"potion": potion.id}]:
            item modify entity @s container.0 [
                {
                    "type": "set_components",
                    "components":{
                        "minecraft:potion_contents":{"custom_effects":[{"id":f"minecraft:{potion.effect_name}","duration": potion.duration,"amplifier": amplifier}]},
                        "minecraft:custom_name": {"translate": f"item.minecraft.splash_potion.effect.{potion_id}", "italic": false}
                    }
                }
            ]

        execute if items entity @s container.0 minecraft:lingering_potion[minecraft:potion_contents={"potion": potion.id}]:
            item modify entity @s container.0 [
                {
                    "type": "set_components",
                    "components":{
                        "minecraft:potion_contents":{"custom_effects":[{"id":f"minecraft:{potion.effect_name}","duration": potion.duration,"amplifier": amplifier}]},
                        "minecraft:custom_name": {"translate": f"item.minecraft.lingering_potion.effect.{potion_id}", "italic": false}
                    }
                }
            ]