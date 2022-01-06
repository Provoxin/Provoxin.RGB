# Provoxin.RGB
RGB pilot and titan lights mod for Titanfall 2 Northstar

Edit mod.json so you don't have to set params every time you launch!

convars (press ~ to open the console and set these in real time):

`rgb_ally_color`: sets the lights color of allied pilots and titans. takes r, g, b as a value from 0-1, and brightness. Example: `rgb_ally_color 1 0 1 20` (bright magenta); `rgb_ally_color default` will set light colors to default.

`rgb_enemy_color`: sets the lights color of enemy pilots and titans. takes r, g, b as a value from 0-1, and brightness. Example: `rgb_enemy_color 0.5 0 0 4` (dim dark red); `rgb_enemy_color default` will set light colors to default.

`rgb_ally_enabled`: whether the lights of allied pilots and titans will cycle through colors. set to `1` to enable and `0` to disable.

`rgb_enemy_enabled`: whether the lights of enemy pilots and titans will cycle through colors. set to `1` to enable and `0` to disable.

`rgb_cycle_speed`: how quickly colors are cycled through for players who have color cycling enabled. higher values will cycle faster.

`rgb_ally_brightness`: sets the brightness of allied pilot and titan lights if `rgb_ally_enabled` is `1`.

`rgb_enemy_brightness`: sets the brightness of enemy pilot and titan lights if `rgb_enemy_enabled` is `1`.
