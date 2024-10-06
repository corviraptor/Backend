# Moves

DredgeCombat Moves are powers that share a single timer per character. Other powers and statuses that aren't classified as Moves may be active while a Move is active, but an entity can only be executing one Move at a time. This means that if a Move is triggered while another Move is using the Move Timer, the new Move must either cancel the other Move or cancel itself.

## The Move Timer

`dredgecombat:moves/timer` is an `origins:multiple` power provided by the `dredgecombat:moves` origin, which has its own layer and is automatically selected for all players. The power is composed of `dredgecombat:moves/timer_time`, an `origins:resource` power, and `dredgecombat:moves/timer_tick` which ticks the timer down. The timer tick unit should be adjusted to be the same as its `interval` property, ensuring anything using the Move timer can rely on the input time representing length in game ticks (1/20th of a second).

When the Move Timer reaches `0`, it stops ticking and makes the entity emit the `minecraft:block_open` Game Event. When cancelled, the Move Timer will be set to `-1` and make the entity emit the `minecraft:dispense_fail` Game Event. Neither of these are game events a player is likely to emit under normal circumstances, so it's safe to assume that these two game events mean a Move has finished.

Moves can use an `origins:prevent_game_event` to listen for these game events. A Move should then check if it is the active Move, and if it is, they execute the end of the Move or the logic required if it was cancelled. The data that stores the active Move of an entity is simply `{ActiveMove:"move_name"}` on the player.

While NBT reads like this are scary, an entity reasonably shouldn't have enough Moves at once for this to significantly impact performance. The Move check happens only once, not every tick, and it is not likely that a large amount of players will all coincidentally have their Move cooldowns end on the same tick. Even if they did, it would affect performance for that tick alone. To be extra sure, though, these conditions may be factored into predicates to drastically reduce the likelihood of performance issues.
