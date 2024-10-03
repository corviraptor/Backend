# DredgeCombat

DredgeCombat is a datapack intended for DredgeSMP. As of this writing, this datapack is only developed and maintained by Kathrynne (corviraptor), and it lives in [her fork](https://github.com/corviraptor/Backend) of the [DredgeSMP Backend repository](https://github.com/DredgeSMP/Backend).

This datapack currently uses a separate resource pack than DredgeResources, as resource packs live in a separate directory from datapacks and I don't want to deal with that right now.

## Objectives
DredgeCombat is primarily focused on providing a easy-to-leverage API for sequenced abilities such as combination attacks. This enables the creation of bosses and more complicated weapons.

Performance is also a major consideration. NBT writes and reads are expensive, so they should not be used with "Action Over Time" powers.