# Style

## Constants

Constants are declared under the `scoreboard objectives add` command of their scoreboard, typically in `load.mcfunction`. The names ("players") of all constants on scoreboards should be in `SCREAMING_SNAKE_CASE`. Constants may be declared on the `Constants` scoreboard if they aren't specific (`ONE`, `ZERO`, `PI`, `TAU`, etc.), but if they are used for comparison with variable scoreboard values they should be declared on the relevant scoreboard (`RANK_A` would be declared on the `ComboMeter` scoreboard).

## Custom NBT Tags

The style for these isn't consistent in Minecraft or Origins anyways, but most of these in DredgeCombat are `Title_Case`.

## File Names & Namespaces

File Names and Namespaces should be in `snake_case`, excluding the name of the datapack's folder/archive itself, which is in `PascalCase`.

### Subdirectories

If the file is in a subdirectory (`namespace:subdirectory/filename.json`), you shouldn't include the name of the subdirectory in the file name. As files are exclusively referenced by the full namespaced path, including the name twice can be more difficult to read. The exception here is files who are the "main" file in a subdirectory and share the exact name. These may also just be named "main" instead.

✅  `dredgecombat:custom_item_textures/custom_item_textures.md`

✅  `dredgecombat:custom_item_textures/main.md`

✅  `dredgecombat:custom_item_textures/examples.md`

❌  `dredgecombat:custom_item_textures/custom_item_texture_examples.md`

Also, sometimes it can be easier to distinguish if there are similarly named sister files (in `dredgecombat:comboblade`'s item modifiers, `dredgecombat:comboblade/comboblade_lore.json` is easier to compare to `dredgecombat:comboblade/hf_blade_lore.json` and `dredgecombat:comboblade/freimesser_lore.json` than just `dredgecombat:comboblade/lore.json`).

## Combo Blades

In code, `comboblade` is a single word. I don't entirely understand why it looks so wrong to me as two words in `snake_case`.
