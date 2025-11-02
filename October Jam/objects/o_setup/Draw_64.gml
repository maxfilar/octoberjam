if !instance_exists(o_transition) {
	var _w = window_get_width()
	var _h = window_get_height()
	if global.pause and  !instance_exists(o_buff) {
		draw_sprite(s_pause,0,_w/2, _h / 2)
	}


	draw_set_colour(c_white)
	draw_healthbar(
		_w*0.3,
		_h*0.75,
		_w*0.7,
		_h*0.75+16,
		time_to_press / time_to_leave * 100,
		c_black,
		c_black,
		c_white,
		0,
		0,
		0,
	)
	
	if room == r_guns {
		var _w = window_get_width()
		var _h = window_get_height()
		draw_set_colour(c_white)
		draw_set_halign(fa_center)
		draw_set_font(f_main_8)
		draw_text_ext(_w*0.5,_h*0.9,"Collect copies of weapons to open them for selection before the start",16,_w*0.9)
	}
}

