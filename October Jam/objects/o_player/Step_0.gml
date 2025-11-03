if global.pause { image_speed = 0; exit }
image_speed = 1

sc_basic_player_movement()
if invincible > 0 invincible --

if global.player_setup.xp == global.player_setup.xp_next {
	global.player_setup.xp = 0
	sc_level_up()
}

if global.player_setup.hp <= 0 {
	audio_stop_sound(sd_arena)
	audio_play_sound(sd_main_menu,1,1)
	sc_save()
	room_transition(r_map)
}

if global.player_setup.lvl > global.max_lvl {
	global.max_lvl = global.player_setup.lvl
}