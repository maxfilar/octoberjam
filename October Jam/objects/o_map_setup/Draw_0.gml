if room == r_map {
	draw_set_halign(fa_center)
	draw_set_colour(c_gray)
	draw_set_font(f_main_6)

	draw_text(
		room_width / 2,
		room_height * 0.8,
		"[A], [D] to change | [Space] to select"
	)
	
	draw_set_font(f_main_8)
	draw_set_colour(c_white)
	for (var i = 0; i < array_length(global.map); i++) {
		if global.map[i].selected {
			draw_text(
				room_width / 2,
				room_height * 0.75,
				global.map[i].name
			)
		}
	}
}