if selected and my_room != noone and keyboard_check_released(vk_space) {
	room_transition(my_room)
}
cur_alpha = selected ? 1 : 0.25
image_alpha = lerp(image_alpha,cur_alpha,0.1)