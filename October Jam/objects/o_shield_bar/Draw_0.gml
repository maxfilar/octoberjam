if global.player_setup.shield {
	draw_self()
	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)
	draw_set_font(f_main_12)
	draw_set_colour(#679483)
	draw_text(x+54,y+32,$"{global.player_setup.shield}")
}