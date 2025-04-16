heroes = [
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
    "Zarya",
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
    "Widowmaker",
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

masteries  = [
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

filepath_template = r"items\templates\include_heroes\IH_template.jsonc"

final_template = """[
"""

for hero in heroes:
    file = open(filepath_template, 'r')
    new_text = file.read()

    new_text = new_text.replace("TITLE", f"Hero {hero}")
    new_text = new_text.replace("TYPE", "Hero")
    new_text = new_text.replace("NAME", hero)

    final_template += new_text

    file.close()

for mty in masteries:
    file = open(filepath_template, 'r')
    new_text = file.read()

    new_text = new_text.replace("TITLE", f"Mastery {mty}")
    new_text = new_text.replace("TYPE", "Mastery")
    new_text = new_text.replace("NAME", mty)

    final_template += new_text
    
    file.close()

#    "name": "Include TITLE",
#    "type": "toggle",
#    "codes": "IncludeTYPE_NAME"

final_template += "]"

output = open(r"items\include_heroes.jsonc", 'w')

output.write(final_template)

output.close()

print(final_template)