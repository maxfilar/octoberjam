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
}