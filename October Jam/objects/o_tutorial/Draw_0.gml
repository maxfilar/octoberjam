draw_set_font(f_main_8)
draw_set_halign(fa_center)
draw_set_colour(c_white)

for (var i = 0 ; i < array_length(text); i++) {
	draw_text_ext(
		room_width/2,
		room_height*0.3 + i * (room_height*0.15),
		text[i],
		16,
		room_width * 0.9
	)
}