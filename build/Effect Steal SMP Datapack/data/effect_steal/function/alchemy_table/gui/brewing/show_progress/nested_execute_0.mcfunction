execute if score #bubble_frame temp matches 1 run return run item modify block ~ ~ ~ container.1 {type: "set_custom_model_data", strings: {mode: "replace_section", offset: 3, values: ["bubble:1"]}}
execute if score #bubble_frame temp matches 2 run return run item modify block ~ ~ ~ container.1 {type: "set_custom_model_data", strings: {mode: "replace_section", offset: 3, values: ["bubble:2"]}}
execute if score #bubble_frame temp matches 3 run return run item modify block ~ ~ ~ container.1 {type: "set_custom_model_data", strings: {mode: "replace_section", offset: 3, values: ["bubble:3"]}}
execute if score #bubble_frame temp matches 4 run return run item modify block ~ ~ ~ container.1 {type: "set_custom_model_data", strings: {mode: "replace_section", offset: 3, values: ["bubble:4"]}}
execute if score #bubble_frame temp matches 5 run return run item modify block ~ ~ ~ container.1 {type: "set_custom_model_data", strings: {mode: "replace_section", offset: 3, values: ["bubble:5"]}}
item modify block ~ ~ ~ container.1 {type: "set_custom_model_data", strings: {mode: "replace_section", offset: 3, values: ["bubble:0"]}}
