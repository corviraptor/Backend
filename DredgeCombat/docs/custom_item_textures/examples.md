# Examples

Here's some samples I've accumulated for working with custom item textures. This is by no means an exhaustive list of the things you can do, but it should be helpful considering CIT Resewn doesn't have any documentation for the version we're using.

## Simple Item Texture

CIT Properties File:
`../DredgeCombat/assets/minecraft/citresewn/cit/ability_token/example.properties`

```toml
nbt.CustomModelData=985001
texture=dredgecombat:item/example.png
items=minecraft:recovery_compass
```

## Layered Item Texture

Model File:
`resourcepacks/DredgeCombat/assets/dredgecombat/models/item/ability_token/upslash.json`

```json
{
    "parent": "item/generated",
    "textures": {
        "layer0": "dredgecombat:item/ability_token/bg_sword",
        "layer1": "dredgecombat:item/ability_token/frame_special",
        "layer2": "dredgecombat:item/ability_token/icon_upslash"
    }
}
```

CIT Properties File:
`../DredgeCombat/assets/minecraft/citresewn/cit/ability_token/upslash.properties`

```toml
nbt.CustomModelData=985001
model=dredgecombat:item/ability_token/upslash.json
items=minecraft:recovery_compass
```

## 3D Model

CIT Properties File:
`../DredgeCombat/assets/minecraft/citresewn/cit/comboblades`

```toml
nbt.CustomModelData=981098
model=dredgecombat:item/comboblade/freimesser_axe.json 
items=minecraft:netherite_axe
```

Model File:

``` json
{
    "credit": "Made with Blockbench",
    "texture_size": [64, 64],
    "textures": {
        "0": "dredgecombat:item/comboblade/freimesser", 
        "particle": "dredgecombat:item/comboblade/freimesser"
    },
    "elements": [
        "Comments don't exist in json but im truncating the elements here.",
        "in your file generated by Blockbench or whatever you'll have all",
        "the elements of your model here :) I hate having to write JSON :)"
    ]
},
```

... where `"dredgecombat:item/comboblade/freimesser"` points to `../DredgeCombat/assets/dredgecombat/textures/item/comboblade/freimesser.png`

Because this model has emissive parts, there is a texture `freimesser_e.png` in the same directory as `freimesser.png` that acts as the emissive map. This won't work for players without Continuity.