# Custom Item Textures

CIT Resewn in future versions was refactored to be much better in terms of syntax, removing the "magic numbers" system and taking advantage of features that became available in Minecraft later on. We do not have that version. Unfortunately, CIT Resewn does not have any documentation for the version that we have. I have compiled [a list of examples](./examples.md) to learn from, though.

## Emissive Textures

CIT Resewn does *not* provide emissive textures. This is provided by Continuity, an extension of the Optifine specification. Continuity is a part of the DredgeOptional_ClientSuggestions mod list, so you may not be able to depend on every player having it.

Luckily, as long as `DredgeCombat/assets/minecraft/optifine/emissive.properties` exists, all you have to do to make an emissive texture is just add `_e` to the end of your texture's file name. For example, if you have a texture `texturename.png` and you want to make another texture for the emissive layer, you just have to name the second texture `texturename_e.png`.

## Custom Model Data

DredgeCombat uses `98####` for its CIT Resewn Custom Model Data numbers. The third and fourth numbers indicate the model type, and the last two numbers identify the specific model.

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

### Ability Tokens

Custom Model Data Prefix: `9850##`

| Model            | Data #   |
| ---------------- | -------- |
| Slash Up Token   | `985001` |
