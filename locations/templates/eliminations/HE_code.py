import json

roles = [
    "Tank",
    "Damage",
    "Support"
]

info = {
    "Tank":[
        "DVa",
        "Doomfist",
        "Hazard",
        "Junker Queen",
        "Mauga",
        "Orisa",
        "Ramattra",
        "Reinhardt",
        "Roadhog",
        "Sigma",
        "Winston",
        "Wrecking Ball",
        "Zarya"
    ],
    "Damage":[
        "Ashe",
        "Bastion",
        "Cassidy",
        "Echo",
        "Genji",
        "Hanzo",
        "Junkrat",
        "Mei",
        "Pharah",
        "Reaper",
        "Sojourn",
        "Soldier 76",
        "Sombra",
        "Symmetra",
        "Torbjorn",
        "Tracer",
        "Venture",
        "Widowmaker"
    ],
    "Support":[
        "Ana",
        "Baptiste",
        "Brigitte",
        "Illari",
        "Juno",
        "Kiriko",
        "Lifeweaver",
        "Lucio",
        "Mercy",
        "Moira",
        "Zenyatta"
    ]
}

#pos_main_start      = [210, 1215]
#pos_main_offset     = [119, 0]
#pos_main_distance   = [0, 112]

pos_main_start      = [210, 1215]
pos_main_offset     = [119, 112]
pos_main_distance   = [0, 112]

location_size = 30

template_start = open(r"locations/templates/eliminations/HE_main_start.txt", 'r')
template_end = open(r"locations/templates/eliminations/HE_main_end.txt", 'r')

filepath_template = r"locations\templates\eliminations\HE_template.jsonc"

final_template = template_start.read()

for role_num in range(len(info)):
    role_name = roles[role_num]

    for hero_num in range(len(info[role_name])):
        hero_name = list(info[role_name])[hero_num]

        file = open(filepath_template, 'r')
        new_text = file.read()
        file.close()

        new_text = new_text.replace("ROLENAME", role_name)

        if role_num == 0:
            pos_main_start      = [210, 1215]
            pos_main_offset     = [119, 112]

            if hero_num == 0:
                pos_main_x = pos_main_start[0]
                pos_main_y = pos_main_start[1]
            else:
                pos_main_x = (pos_main_start[0] + pos_main_offset[0]) + (((hero_num-1) % 4)*pos_main_offset[0])
                pos_main_y = pos_main_start[1] + (((hero_num-1) // 4)*pos_main_offset[1])
        elif role_num == 1:
            pos_main_start      = [211 + (6*119), 1215]
            pos_main_offset     = [119, 112]

            print(f"{hero_num}: {(hero_num) % 6}, {(hero_num) // 6}")
            pos_main_x = pos_main_start[0] + ((hero_num % 6)*pos_main_offset[0])
            pos_main_y = pos_main_start[1] + ((hero_num // 6)*pos_main_offset[1])
        else:
            pos_main_start      = [211 + (13*119), 1215]
            pos_main_offset     = [119, 112]

            pos_main_x = pos_main_start[0] + ((hero_num % 4)*pos_main_offset[0])
            pos_main_y = pos_main_start[1] + ((hero_num // 4)*pos_main_offset[1])

        new_text = new_text.replace(f"POS_MAIN_X", str(pos_main_x))
        new_text = new_text.replace(f"POS_MAIN_Y", str(pos_main_y))

        new_text = new_text.replace("HERONAME", hero_name)
        new_text = new_text.replace("ROLENAME", role_name)
        new_text = new_text.replace("CHECK_SIZE", str(location_size))

        final_template += new_text

final_template += template_end.read()

output = open(r"locations\eliminations.jsonc", 'w')

output.write(final_template)

output.close()

#print(final_template)