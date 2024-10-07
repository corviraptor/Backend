# Custom Item Textures

## CIT Resewn

CIT Resewn in future versions was refactored to be much better in terms of syntax, removing the "magic numbers" system and taking advantage of features that became available in Minecraft later on. We do not have that version. Unfortunately, CIT Resewn does not have any documentation for the version that we have. I have compiled [a list of examples](./examples.md) to learn from, though.

While Custom Model Data is a vanilla feature, without CIT you have to add the custom model overrides to the vanilla model in `~/assets/minecraft/models`. With CIT, you can have a `.properties` file for the item in `~/assets/minecraft/citresewn/cit` which will be loaded automatically on top of the existing models, ensuring no conflicts assuming you have picked a Custom Model Data number with no conflicts. This also means that you can leave the default models alone — for items like Compasses which have overrides in the vanilla resource pack, this means you don't have to worry about copying all of those overrides over to the model in your resource pack.

## Emissive Textures

CIT Resewn does *not* provide emissive textures. This is provided by Continuity, an extension of the Optifine specification. Continuity is a part of the DredgeOptional_ClientSuggestions mod list, so you may not be able to depend on every player having it.

Luckily, as long as `~/assets/minecraft/optifine/emissive.properties` exists, all you have to do to make an emissive texture is just add `_e` to the end of your texture's file name. For example, if you have a texture `texturename.png` and you want to make another texture for the emissive layer, you just have to name the second texture `texturename_e.png`.

## Paletted Permutations & Atlases

You can add a source to `~/assets/minecraft/atlases/blocks.json` of type `paletted_permutations` to leverage the system used by Armor Trims to generate textures with different palettes in memory, so you don't have to make a bunch of different colored textures for each permutation of your item. Check the [examples](./examples.md#paletted-permutations--layered-textures) for more information.

There are other Source Types for Atlases, but they may be less useful to you as they don't really generate any textures, with the exception of `unstitch`. `unstitch` can be used to load and name textures cut from a traditional single-image atlas/sprite sheet, though it doesn't appear to be used in the default resource pack. `filter` lets you remove textures from the Atlas using a regular expression, but also appears to be unused. `single` and `directory` are used for most of the atlas sources in Minecraft to load textures, but as we aren't making a new Atlas file most of the textures we're concerned with are already loaded in `~/assets/minecraft/atlases/blocks.json` as it includes the directories `block` and `item`.

## Custom Model Data

DredgeCombat uses `98####` for its Custom Model Data numbers. The third and fourth numbers indicate the model type, and the last two numbers identify the specific model.

### Tools

Custom Model Data Prefix: `981###`

#### Combo Blades

Custom Model Data Prefix: `9810##`

| Model              | Data #   |
| ------------------ | -------- |
| HF Blade (Axe)     | `981000` |
| HF Blade (Sword)   | `981001` |
| Freimesser (Axe)   | `981098` |
| Freimesser (Sword) | `981099` |

### Move Tokens

Custom Model Data Prefix: `9850##`

| Model            | Data #   |
| ---------------- | -------- |
| Slash Up Token   | `985001` |
