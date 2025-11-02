if (room == r_tutorial || room == r_arena) {
	if keyboard_check_released(ord("P")) {
		global.pause = !global.pause
	}

	if keyboard_check(vk_escape) && time_to_press < time_to_leave {
		time_to_press ++
	}

	if time_to_press >= time_to_leave {
		room_goto(r_map)
	}
}