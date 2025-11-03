if selected and my_room != noone and keyboard_check_released(vk_space) {
	room_transition(my_room)
	audio_play_sound(sd_select,1,0)
	if my_room == r_arena {
		audio_stop_sound(sd_main_menu)
		audio_play_sound(sd_arena,1,1)
	}
}
cur_alpha = selected ? 1 : 0.25
image_alpha = lerp(image_alpha,cur_alpha,0.1)