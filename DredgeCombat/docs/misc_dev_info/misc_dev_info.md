# Miscellaneous Developer Information

The Minecraft Wiki is a surprisingly good resource for learning what you can do with Datapacks in lieu of proper documentation. However, the Wiki only covers the current version of Minecraft, while we use 1.20.1. This page has a (very incomplete) list of resources and inconsistencies.

## General

Remember that premature optimization can really hurt the project's maintainablity. Prioritize readability over performance until you notice an issue, unless it's something that's obviously bad for performance like reading NBT every tick with an Action Over Time power or something.

[Misode's Github Pages Website](https://misode.github.io/) provides a lot of JSON generators that can be set to use previous versions, including 1.20.1! Just go up to the top right of the page and change the "1.21.1" to "1.20—1.20.1" or whatever version range includes 1.20.1. This is a great resource to get a feeling for what's different from the Wiki, and provides a lot of feedback for you to learn from. Also, while JSON is human readable and editable, it was originally intended to be generated instead of written manually which is why the syntax is so fussy and difficult to refactor.

## NBT

[Origins NBT information & examples](https://gist.github.com/MisionThi/08b2e8931c72ba20d8832869874edc9a)

## Item Modifiers

[Generator](https://misode.github.io/item-modifier/)

[Main Article](./item_modifiers.md)

## Predicates

[Generator](https://misode.github.io/predicate/)

Using a Predicate to check for NBT is [actually faster](https://www.reddit.com/r/MinecraftCommands/comments/kjy674/are_predicates_more_efficient_than_nbt_selectors/) than checking for it directly via commands. I believe NBT is stored as tokens or something instead of just being the string, so the Predicate can directly check that instead of having to parse the string, but that's just a guess. I don't really know what's going on under the hood.

It's also just more readable to factor conditions into a descriptively named Predicate (especially for more complicated conditions), and it means that there'll be only one source of truth for everything that uses that Predicate. If you want to change the condition that all of the systems that use that Predicate, you can just edit the Predicate once and be done with it instead of having to hunt down every copy of that condition.
