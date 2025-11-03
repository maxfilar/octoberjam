if array_length(buff_list) > 0 {
	key_next = keyboard_check_released(ord("D"))
	key_back = keyboard_check_released(ord("A"))
	
	if key_back && cur_buff > 0 {
		cur_buff --
	} else if key_next && cur_buff < array_length(buff_list) - 1 {
		cur_buff ++
	}
	
	for (var i = 0; i < array_length(buff_list); i++) {
		buff_list[i].selected = false
	}
	buff_list[cur_buff].selected = true
	
	if select_pressing < select_time {
		if keyboard_check(vk_space) {
			select_pressing ++
		} else {
			select_pressing = 0
		}
	}
	
	if select_pressing >= select_time {
		select_pressing = 0
		with buff_list[cur_buff] {
			script_execute(my_buff._script)
			array_delete(o_buffs_setup.buff_list,0,array_length(o_buffs_setup.buff_list))
			global.pause = false
			global.player_setup.hp = global.player_setup.max_hp
			instance_destroy(o_buff)
		}
	}
}