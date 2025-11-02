

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
		room_transition(r_map)
	}
}