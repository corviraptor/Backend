# Item Modifiers

Item modifiers are awesome. They allow you to move a lot of stuff out of the command that generates your item. This means you don't have to manage a long single line of JSON text for your item's name, lore, NBT data, etc. Also, if you have multiple ways of spawning the same item, you won't have to keep every command in sync every time you want to edit the item.

Here's the command it would take to generate an item with the HF Blade's lore, disregarding all of the other NBT data it needs:

```js
/give @s minecraft:netherite_sword{display:{Lore:{["[{"text":"⚔ Combo Blade ", "color":"#922644", "italic":false},{"text":"(🪓 Axe & 🗡 Sword)","color":"dark_gray", "italic":false}]"],{"text":" "},{"text":"High Frequency (HF) Blades are named for their ability","color":"gray","italic":false},{"text":"to resonate at extremely high frequencies. This","color":"gray","italic":false},{"text":"oscillation will disrupt most molecular bonds, allowing","color":"gray","italic":false},{"text":"the blade to cut through materials that would be very","color":"gray","italic":false},{"text":"difficult to cut using currently existing technology.","color":"gray","italic":false},{"text":" "},{"text":"( Not Tradable, Marketable, or Usable in Crafting )","color":"dark_gray","italic":false},{"text":" "}}}} 1
```

It's long and ugly and it's not easy to see where scopes and lines start and end. You might not have even noticed the array at the first line of the lore — the brackets blend in with all the noise. Nobody wants to see that.

Now look at this Item Modifier that does the same thing:

```json
[
  {
    "function": "minecraft:set_lore",
    "entity": "this",
    "replace": "false",
    "lore": [
        [
          {"text":"⚔ Combo Blade ", "color":"#922644", "italic":false},
          {"text":"(🪓 Axe & 🗡 Sword)", "color":"dark_gray", "italic":false}
        ],
        {"text":" "},
        {"text":"High Frequency (HF) Blades are named for their ability","color":"gray","italic":false},
        {"text":"to resonate at extremely high frequencies. This","color":"gray","italic":false},
        {"text":"oscillation will disrupt most molecular bonds, allowing","color":"gray","italic":false},
        {"text":"the blade to cut through materials that would be very","color":"gray","italic":false},
        {"text":"difficult to cut using currently existing technology.","color":"gray","italic":false},
        {"text":" "},
        {"text":"( Not Tradable, Marketable, or Usable in Crafting )","color":"dark_gray","italic":false},
        {"text":" "}
    ]
  }
]
```

You can actually read it and edit it! Also, you can do more complicated things with the Raw JSON Text Format here like what's happening on that first line without it becoming even more unreadable.

Now imagine you want to add a custom name, an Unbreakable tag, some custom data, anything, and imagine the tears streaming down your face from having to keep all the brackets correct with no new lines or indentation whatsoever. I don't have to imagine. Thankfully, with Item Modifiers, you can just put them together in an array like this:

```json
[
  {
    "function": "minecraft:set_nbt",
    "tag": "{CustomModelData:981000}"
  },
  {
    "function": "minecraft:set_nbt",
    "tag": "{Combo_Axe:0b, Combo_Axe_Prototype:1b, Prototype:1b}"
  },
  {
    "function": "minecraft:reference",
    "name": "dredgecombat:prototype"
  },
  {
    "function": "minecraft:set_name",
    "name": [{"text":"HF Blade †","color":"#6b7777", "italic":false, "bold":true}]
  },
  {
    "function": "minecraft:reference",
    "name": "dredgecombat:comboblade/hf_blade_lore"
  }
]
```

That's the whole file! You don't even need to make a "minecraft:multiple" item modifier or whatever. You just put them in square brackets to make an array.

There are so many benefits here to unpack. This clearly separates every independent operation into its own JSON object. It lets you communicate a lot more of what you *mean* by this code to the poor soul who has to edit it (most likely your future self). This is especially helpful because JSON does not allow comments, nor does it have almost any tools on its own to help the code speak for itself.

Check out the `minecraft:reference` item modifier at the bottom of the list. It gets the huge block of lore out of the main file, but also means that both the Axe and Sword phases of the HF blade can read the exact same data for the lore. That way you don't have to edit both of them if you want to change it! Beats the hell out of fitting all this into a single line.

## Weird Behavior

For some reason, if you use `/item replace` to generate your item with some NBT data already in it, if you apply an Item Modifier that adds lore to the item afterwards it'll add another copy of the lore for every time you spawn another item that way. I don't know why.

This causes that problematic behavior:

```js
item replace block ~ ~1 ~ container.0 with minecraft:netherite_axe{Unbreakable:1b} 1
item modify block ~ ~1 ~ container.0 dredgecombat:comboblade/hf_blade_axe // scary!
```

This doesn't:

```js
item replace block ~ ~1 ~ container.0 with minecraft:netherite_axe 1
item modify block ~ ~1 ~ container.0 dredgecombat:comboblade/hf_blade_axe // works fine :)
```

Luckily, you can apply that NBT data in the Item Modifier anyway, and it's probably better to do that regardless of this weird little issue.

## Limitations with Item Lore

Unfortunately, in our Minecraft version we can't really inject lines of lore at certain indices with Item Modifiers. This is a feature that was added after our version.

### origins:tooltip

We can kind of do the same thing with [`origins:tooltip`](https://origins.readthedocs.io/en/1.10.0/types/power_types/tooltip/). Only players with the tooltip power can see it, and I think the `order` property only affects how other tooltips like this are ordered. One neat little quirk is that it's entirely non-destructive — the additional lore text isn't a part of the item's NBT data, so it won't mess with any existing lore.

This is used for the "Prototype" text for Prototype weapons, because we can make our tooltip only render if the item has `{Prototype:1b}` in its NBT data using an item condition. That way when the Prototype weapon is used to replace a Loadout weapon, we can just turn that NBT flag off on the newly generated weapon via item modifier and it won't show.
