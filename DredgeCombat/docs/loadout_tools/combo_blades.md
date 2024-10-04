# Combo Blades

Combo Blades have the ability to change between Axe and Sword Phases. `Sneak + Alt Fire` will draw the Sword if the Combo Blade is currently in Axe Phase, or will sheathe the Sword if it is in Sword Phase, becoming the Combo Axe. If your Combo Meter is high enough, Drawing or Sheathing the Combo Blade will become a powerful ability!

Combo Blades aren't actually restricted to Axe and Sword Tool Types, it's just easier than calling the phases "Phase 1" and "Phase 2". (This part might turn out to be too annoying to implement, it might actually stay as just swords and axes)

## Combo Sword

The Combo Sword will stack "Slices" on enemies that have been hit by its attacks. When sheathed with a high Combo Meter, your enemies will be damaged for every Slice they have.

While the Combo Sword is in your hand, it will deplete a resource visible above your hotbar. Once that is empty it will begin to deplete your Combo Meter, making it harder to keep your Combo Meter high enough to activate the Slices on your enemies when sheathed. This can be delayed by frequently switching away from the Combo Sword to other weapons.

## Valid Loadout Items

Combo blades may have modules corresponding to either Phase's Tool Type in their Loadout. Modules only applicable to one Phase's Tool Type will only apply to their respective Phase; the Combo Sword would not recieve abilities or buffs from Axe-type modules.

## CPM Integration

| Event                   | CPM Animation Name             | Recommended Animation Types |
| ----------------------- | ------------------------------ | --------------------------- |
| Draw Attack Start       | `comboblade.draw_attack_start` | Gesture, Pose               |
| Draw Attack End         | `comboblade.draw_attack_end`   | Gesture                     |
| Sheathe Attack          | `comboblade.sheathe_attack`    | Gesture                     |
| Draw                    | `comboblade.draw`              | Gesture                     |
| Sheathe                 | `comboblade.sheathe`           | Gesture                     |
| Combo Axe In Mainhand   | `comboblade.axe.in_mainhand`   | Toggle Layer                |
| Combo Sword In Mainhand | `comboblade.sword.in_mainhand` | Toggle Layer                |
