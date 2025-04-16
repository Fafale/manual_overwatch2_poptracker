import json

modes_UPPER = [
    "Solo",
    "Team"
]

modes_lower = [
    "solo",
    "team"
]


pos_main_start      = [930, 424]
pos_main_offset     = [0, 0]
pos_main_distance   = [0, 451]

location_size = 30

template_start = open(r"locations/templates/deathmatch/DM_main_start.txt", 'r')
template_end = open(r"locations/templates/deathmatch/DM_main_end.txt", 'r')

filepath_template = r"locations\templates\deathmatch\DM_template.jsonc"

final_template = template_start.read()

for mode_num in range(len(modes_UPPER)):
    mode_name_UPPER = modes_UPPER[mode_num]
    mode_name_lower = modes_lower[mode_num]

    file = open(filepath_template, 'r')
    new_text = file.read()

    new_text = new_text.replace("HERONAME", mode_name_UPPER)
    new_text = new_text.replace("heroname", mode_name_lower)

    new_text = new_text.replace("CHECK_SIZE", str(location_size))

    for i in range(0, 3):
        pos_main_x = pos_main_start[0] + (i*pos_main_offset[0]) + (pos_main_distance[0]*mode_num)
        pos_main_y = pos_main_start[1] + (i*pos_main_offset[1]) + (pos_main_distance[1]*mode_num)

        new_text = new_text.replace(f"POS_MAIN_X_{i+1}", str(pos_main_x))
        new_text = new_text.replace(f"POS_MAIN_Y_{i+1}", str(pos_main_y))
    final_template += new_text
    file.close()

final_template += template_end.read()

output = open(r"locations\deathmatch.jsonc", 'w')

output.write(final_template)

output.close()

print(final_template)