draw_self()
draw_set_halign(fa_center)
draw_set_font(f_main_14)
draw_set_colour(#23332D)
draw_text(x+32,y+32,$"{global.player_setup.lvl}")
draw_healthbar(
	x-4,
	y+76-8,
	x+68,
	y+76,
	global.player_setup.xp / global.player_setup.xp_next * 100,
	#23332D,
	#679483,
	#679483,
	0,
	1,
	0,
)