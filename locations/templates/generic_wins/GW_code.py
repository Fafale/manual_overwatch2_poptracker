import json

roles = [
    "Tank",
    "Damage",
    "Support"
]

gamemodes = [
    "Control",
    "Escort",
    "Flashpoint",
    "Hybrid",
    "Push",
    "Clash"
]

pos_main_start      = [295, 278]
pos_main_offset     = [0, 112]
pos_main_distance   = [118, 0]

location_size = 70

template_start = open(r"locations/templates/generic_wins/GW_main_start.txt", 'r')
template_end = open(r"locations/templates/generic_wins/GW_main_end.txt", 'r')

filepath_template_1_start = r"locations\templates\generic_wins\GW_template_1_start.jsonc"
filepath_template_1_end = r"locations\templates\generic_wins\GW_template_1_end.jsonc"

filepath_template_2 = r"locations\templates\generic_wins\GW_template_2.jsonc"

final_template = template_start.read()

for role_num in range(len(roles)):
    name = roles[role_num]

    file_1s = open(filepath_template_1_start, 'r')
    file_1e = open(filepath_template_1_end, 'r')
    new_text = file_1s.read()

    for mode_num in range(len(gamemodes)):
        mode = gamemodes[mode_num]

        file_2 = open(filepath_template_2, 'r')

        new_text_2 = file_2.read()

        new_text_2 = new_text_2.replace("MODENAME", mode)

        pos_main_x = pos_main_start[0] + (mode_num*pos_main_offset[0]) + (pos_main_distance[0]*(role_num % 7))
        pos_main_y = pos_main_start[1] + (mode_num*pos_main_offset[1]) + (pos_main_distance[1]*(role_num>6))

        new_text_2 = new_text_2.replace(f"POS_MAIN_X", str(pos_main_x))
        new_text_2 = new_text_2.replace(f"POS_MAIN_Y", str(pos_main_y))

        new_text += new_text_2

        file_2.close()


    new_text = new_text.replace("ROLENAME", name)
    new_text = new_text.replace("CHECK_SIZE", str(location_size))

    new_text += file_1e.read()

    final_template += new_text
    file_1s.close()
    file_1e.close()

final_template += template_end.read()

output = open(r"locations\generic_wins.jsonc", 'w')

output.write(final_template)

output.close()

print(final_template)