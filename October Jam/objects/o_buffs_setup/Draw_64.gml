if array_length(buff_list) > 0 {
	draw_set_font(f_main_24)
	draw_set_colour(c_white)
	draw_set_halign(fa_center)
	
	var _x = window_get_width() / 2
	var _y = window_get_height() * 0.3
	draw_text(
		_x,
		_y,
		"LEVEL UP"
	)
	
	draw_set_colour(c_white)
	draw_set_font(f_main_12)
	
	var _x = window_get_width() / 2
	var _y = window_get_height() * 0.8
	draw_text(
		_x,
		_y,
		"[A], [D] to change | [Space] to select"
	)
}