import json

heroes = [
    "Brigitte",
    "Cassidy",
    "DVa",
    "Echo",
    "Genji",
    "Kiriko",
    "Lucio",
    "Mei",
    "Mercy",
    "Reinhardt",
    "Sojourn",
    "Soldier 76",
    "Tracer",
    "Winston"
]


pos_main_start      = [1095, 420]
pos_main_offset     = [45, 0]
pos_main_distance   = [168, 320]

pos_mastery_start  = [300, 500]
pos_mastery_offset = [50, 10]

location_size = 30

template_start = open(r"locations/templates/masteries_main_start.txt", 'r')
template_end = open(r"locations/templates/masteries_main_end.txt", 'r')

filepath_template = r"locations\templates\masteries_hero.jsonc"

final_template = template_start.read()

for hero_num in range(len(heroes)):
    hero_name = heroes[hero_num]

    file = open(filepath_template, 'r')
    hero_text = file.read()

    hero_text = hero_text.replace("HERONAME", hero_name)
    hero_text = hero_text.replace("CHECK_SIZE", str(location_size))

    for i in range(0, 3):
        pos_main_x = pos_main_start[0] + (i*pos_main_offset[0]) + (pos_main_distance[0]*(hero_num % 7))
        pos_main_y = pos_main_start[1] + (i*pos_main_offset[1]) + (pos_main_distance[1]*(hero_num>6))

        pos_mastery_x = pos_mastery_start[0] + (i*pos_mastery_offset[0]) + (100*hero_num)
        pos_mastery_y = pos_mastery_start[1] + (i*pos_mastery_offset[1]) + (100*(hero_num % 7))

        hero_text = hero_text.replace(f"POS_MAIN_X_{i+1}", str(pos_main_x))
        hero_text = hero_text.replace(f"POS_MAIN_Y_{i+1}", str(pos_main_y))

        hero_text = hero_text.replace(f"POS_MASTERY_X_{i+1}", str(pos_mastery_x))
        hero_text = hero_text.replace(f"POS_MASTERY_Y_{i+1}", str(pos_mastery_y))
    final_template += hero_text
    file.close()

final_template += template_end.read()

output = open(r"locations\masteries.jsonc", 'w')

output.write(final_template)

output.close()

print(final_template)