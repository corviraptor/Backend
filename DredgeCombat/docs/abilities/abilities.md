# Abilities

DredgeCombat Abilities are powers that share a single timer per character. Other powers and statuses that aren't classified as Abilities may be active while an Ability is active, but an entity can only be executing one Ability at a time. This means that if an Ability is triggered while another Ability is using the Ability Timer, the new Ability must either cancel the other Ability or cancel itself.

## The Ability Timer

`dredgecombat:abilities/timer` is an `origins:multiple` power provided by the `dredgecombat:abilities` origin, which has its own layer and is automatically selected for all players. The power is composed of `dredgecombat:abilities/timer_time`, an `origins:resource` power, and `dredgecombat:abilities/timer_tick` which ticks the timer down once every two game ticks (1/10th of a second, or one redstone tick).

When the Ability Timer reaches `0`, it stops ticking and executes `function dredgecombat:abilities/on_finish_ability` which invokes the correct action for the ability. When cancelled, the Ability Timer will be set to `-1` and execute `function dredgecombat:abilities/on_cancel_ability` which functions similar to `on_finish_ability`, only handling the actions to take after a specific ability is cancelled.
