# CPM Integration

Abilities & attacks from this datapack can trigger animations on your CPM model! Most of these are recommended to be Gestures, as Gestures can be made to not loop and will automatically cancel themselves upon the activation of another Gesture.

There are a few requirements for the datapack to be able to trigger these animations.

* You need to name your model's animation the exact string that the datapack is expecting. These will be listed in a table on the page of whatever's providing the event.
* The animation must be set as a "Command Activated Animation".
* The animation will probably not work correctly if you use the wrong type (pose, gesture, or toggle layer).

Animations like this are usually named something along the lines of `tool_type.ability_name`. Sequenced animations may be named `tool_type.ability_name.anticipation` and `tool_type.ability_name.release`, or may simply be numbered for longer combinations such as `tool_type.ability_name.3`.

## In Mainhand Toggle Layers

Let's say your character has a signature weapon that they carry on their back. For many of the tool types in this datapack, you can make a toggle layer for when that tool is in the mainhand! This means that you can hide the signature weapon on their back when they are holding the weapon in-game. These animations are usually named `[tool type].in_mainhand`. You can use this to hide weapons on the character when they are holding the in-game version of them, but you can also hide the mainhand item cube and unhide your own custom model for a weapon!
