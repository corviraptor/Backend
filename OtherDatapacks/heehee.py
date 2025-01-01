import json
from pathlib import Path

here = Path('.')

DONTTOUCH = [
    "badlands.json",
    "desert.json",
    "eroded_badlands.json",
    "savanna.json",
    "savanna_plateau.json",
    "windswept_savanna.json",
    "wooded_badlands.json",
    "ancient_sands.json",
    "arid_highlands.json",
    "ashen_savanna.json",
    "brushland.json",
    "bryce_canyon.json",
    "desert_canyon.json",
    "desert_oasis.json",
    "desert_spires.json",
    "fractured_savanna.json",
    "lush_desert.json",
    "red_oasis.json",
    "rocky_mountains.json",
    "sandstone_valley.json",
    "savanna_badlands.json",
    "savanna_slopes.json",
    "shrubland.json",
    "siberian_taiga.json",
    "warped_mesa.json",
    "white_mesa.json"
]

COLD = [
    "deep_frozen_ocean.json",
    "frozen_ocean.json",
    "frozen_peaks.json",
    "frozen_river.json",
    "grove.json",
    "ice_spikes.json",
    "jagged_peaks.json",
    "snowy_beach.json",
    "snowy_plains.json",
    "snowy_slopes.json",
    "snowy_taiga.json",
    "alpha_islands_winter.json",
    "alpine_grove.json",
    "cold_shrubland.json",
    "emerald_peaks.json",
    "frozen_cliffs.json",
    "glacial_chasm.json",
    "ice_marsh.json",
    "moonlight_grove.json",
    "moonlight_valley.json",
    "siberian_grove.json",
    "siberian_taiga.json",
    "skylands_winter.json",
    "snowy_badlands.json",
    "snowy_cherry_grove.json",
    "snowy_maple_forest.json",
    "snowy_shield.json",
    "wintry_forest.json",
    "wintry_lowlands.json"
]


for biome_file in here.glob('**/*.json'):
    if biome_file.name in DONTTOUCH or biome_file.name in COLD:
        continue


    with open(biome_file, 'r') as r_fp:
        j = json.load(r_fp)

    # j['has_precipitation'] = True
    j['temperature_modifier'] = 'none'
    j['temperature'] = -100.0

    with open(biome_file, 'w') as w_fp:
        json.dump(j, w_fp)
