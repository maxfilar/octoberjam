draw_self()

if selected {
	draw_set_colour(c_white)
	draw_set_halign(fa_center)
	draw_set_font(f_main_6)
	draw_text(x+32,y+72, $"Time played: {global.time.hours} hours; {global.time.minutes} minutes; {global.time.seconds} seconds")
	draw_text(x+32,y+86, $"Record level: {global.max_lvl}")
}