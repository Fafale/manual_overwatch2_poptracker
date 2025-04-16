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

pos_main_start      = [295, 278]
pos_main_offset     = [0, 112]
pos_main_distance   = [118, 0]

location_size = 70

template_start = open(r"locations/templates/eliminations/HE_main_start.txt", 'r')
template_end = open(r"locations/templates/eliminations/HE_main_end.txt", 'r')

filepath_template = r"locations\templates\eliminations\HE_template.jsonc"

final_template = template_start.read()

for num in range(len(info)):
    role_name = roles[num]

    for hero_name in info[role_name]:

        file = open(filepath_template, 'r')
        new_text = file.read()
        file.close()

        new_text = new_text.replace("ROLENAME", role_name)

        pos_main_x = pos_main_start[0] + (num*pos_main_offset[0]) + (pos_main_distance[0]*(num % 7))
        pos_main_y = pos_main_start[1] + (num*pos_main_offset[1]) + (pos_main_distance[1]*(num>6))

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

print(final_template)