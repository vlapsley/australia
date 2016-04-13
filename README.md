# Australia
A mod for Minetest 0.4.13-dev. Work in progress.
Created by vlapsley. See *credits.txt* for all acknowledgements.

![Screenshot](https://raw.githubusercontent.com/vlapsley/australia/master/screenshot.png)

[Discussion on Minetest Forums](https://forum.minetest.net/viewtopic.php?f=9&t=14412)

## Inspiration
The inspiration for this mod is my home country, Australia.
I've tried to bring the landscape and flora into the game of Minetest.
Enjoy and think of visiting Australia next time you travel abroad.

### Biomes
#### Underground
Stone. No change from the default game.
#### Mangroves
The mangroves of Queensland and Northern Territory. Watch out for crocodiles!
#### Tasman Sea
Beautiful sandy beaches.
#### Great Australian Bight
Sandstone cliffs and wild ocean.
#### Indian Ocean
Sandy beaches and dolphins.
#### Great Barrier Reef
The most amazing coral reef off the coast of Queensland.
#### Timor Sea
White sand beaches and palm trees.
#### Jarrah-Karri Forest
The south-west corner of Western Australia. Forests of Jarrah, Karri and Marri.
#### Eastern Coasts
Amazing beaches, the dazzling Illawarra Flame Tree in your garden, and a monstrous Moreton Bay Fig to pick fruit from.
The east coast of Australia is the perfect place to build your holiday house.
#### Goldfields-Esperence
Hot, dry and lots of nothing in the center and south of Western Australia.
Except gold. Lots of gold.
#### Arnhem Land
Tropical wetlands in the Northern Territory.
#### Gulf of Carpentaria
Sub-tropical area between Cape York in Queensland and Darwin in the Northern Territory.
#### Far North Queensland
You'll find the tropical Daintree rainforest near the coastline and eucalypt forests inland along the Cape York Peninsula.
#### Pilbara
One of the hottest parts of Australia is the north-west of Western Australia.
The rocky, gravel surface is red due to the amount of hematite in the ground.
You'll find lots of iron ore here. Don't forget to bring plenty of water.
### Kimberley
The north-west of Western Australia is where you'll find the odd-shaped Boab Tree.
Is it the flora or the chance of diamonds that brought you here?
#### Tasmania
The island of Tasmania is the most mountainous state in Australia.
Much of Tasmania is densely forested.
The Tarkine, located in island's far North West, is the largest temperate rainforest area in Australia.
In the south you'll find the tallest flowering tree in the world, Eucalyptus Regnans, the Swamp Gum.
#### Great Dividing Range
The Great Dividing Range is Australia's most substantial mountain range.
The range stretches more than 3,500 km (2,175 mi), running the entire length of the eastern coastline.
#### Victorian Forests
The cool mountains and southern, central and north-eastern Victoria are dominated by wet eucalypt forests.
Blue Gum, White Box and Swamp Gum will all tower over you.
#### Flinders-Lofty
The Flinders-Lofty bioregion in South Australia has a general pattern of mountain ranges, ridges and wide, flat plains.
Some of Australia's best wines come from this region.
#### Murray-Darling Basin
The Murray–Darling basin is a large geographical area in the interior of southeastern Australia.
Its name is derived from its two major rivers, the Murray River and the Darling River.
River Red Gum are know to drop large branches, so watch your head when resting in their shade.
#### Mulga Lands
The Mulga Lands are a bioregion of eastern Australia consisting of dry sandy plains scattered with mulga trees.
#### Central Australia
Central Australia, the 'Red Centre', is the place where you will find the most famous monolith, Uluru and it is where the heart of the outback beats.
#### Simpson Desert
The area is extremely hot and dry. Famous for it's red sand dunes.
#### Australian Alps
The highest parts of the Great Dividing Range.

## To-do list
* Fix no-air blocks for Great Barrier Reef.
* Redo some tree textures, especially wood. Some of them are great, some are awful.
* Fix ore distribution.
* Finish corals in Great Barrier Reef.
* Opals in Central Australia biome.
* Work out way to place some tree and plants along rivers.
* Salt lakes in Central Australia biome.
* Uranium? Silver? Potential support for technic mod
* Adjust tree and plant distribution.
* Adjust tree size and leaf functions.
* Add some rocky beaches.
* Add some river/lake plants, especially to Arnhem land biome.
* Add red terra rossa soil and grape vines in the Flinders-Lofty biome. Red/white wine.
* Add more logs.
* Add moss on trees.
* Palm trees in FNQ and Arnhem land beaches.
* Add support for survival mod/game.

## Installation

### Download
1. [Download](https://github.com/vlapsley/australia/archive/master.zip) the .zip file
2. Extract the .zip archive with an archive manager (WinZip, 7-zip, gunzip...)
3. Rename the directory to *australia* and place it in the `/mods` directory of Minetest.

### Download using Git
1. Open the terminal (in Linux) or the Git shell (in Windows), and set the working directory (the *mods* folder) using `cd` - for example `cd /home/vlapsley/.minetest/mods` or `cd C:\Users\vlapsley\minetest-0.4.13\mods`.
2. Clone (download) Australia: `git clone https://github.com/vlapsley/australia.git`.
3. Next time, you can automatically update Australia mod with the same `cd` command, and `git pull origin master`.

## Use
### Mapgen compatibility
The Australia mod has been designed specifically for the Valleys mapgen, currently in Minetest 0.4.13-dev.
It will work with mapgens v5, v7, flat and fractal, but it won't be as visually appealing.
The rivers and temperature/humidity of the Valleys mapgen play a vital role in getting the feel of the Australia mod just right.

### Settings
You can enable/disable biomes by opening the *init.lua* file and changing each biome setting to `1` for enabled or `0` for disabled.
This will also disable plants, trees and more that are unique to that biome.
All biomes are enabled by default. Currently, disabling the *Underground* biome will have no effect.

## Changelog
### 0.2 (2016-04-13)
* Added ferns.
* Fixed muddy water bucket.

### 0.1 (2016-04-11)
* 24 biomes
* 6 new stone nodes, 4 non-stone nodes
* Dirty river water
* 48 trees
* 10 plants
* 4 corals
