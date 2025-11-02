draw_self()
if my_buff != noone {
	draw_set_colour(c_white)
	draw_set_halign(fa_center)
	draw_set_font(f_main_6)
	draw_text(x+48,y+16,my_buff.name)
	draw_sprite(my_buff.sprite,0,x+48,y+48)
}