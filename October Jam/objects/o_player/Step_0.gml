if global.pause { image_speed = 0; exit }
image_speed = 1

sc_basic_player_movement()
if invincible > 0 invincible --

if global.player_setup.xp == global.player_setup.xp_next {
	global.player_setup.xp = 0
	sc_level_up()
}