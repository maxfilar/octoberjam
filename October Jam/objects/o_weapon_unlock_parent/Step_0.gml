if selected and keyboard_check_released(vk_space) and my_weapon.copies_collected >= my_weapon.copies_to_unlock {
	for (var i = 0; i < array_length(global.guns); i++) {
		global.guns[i].selected = false
	}
	my_weapon.selected = true
}