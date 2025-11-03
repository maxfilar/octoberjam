if (room == r_arena) {
	if keyboard_check_released(ord("P")) and !instance_exists(o_buff) {
		global.pause = !global.pause
	}

	if time_to_press < time_to_leave {
		if keyboard_check(vk_escape) {
			time_to_press ++
		} else {
			time_to_press = 0
		}
	}

	if time_to_press >= time_to_leave {
		audio_stop_sound(sd_arena)
		audio_play_sound(sd_main_menu,1,1)
		time_to_press = 0
		room_transition(r_map)
	}
	
	for (var i = 0; i < array_length(global.guns); i++) {
		if global.guns[i].rate_of_fire < 1 {
			global.guns[i].rate_of_fire = 1
		}
	}
}