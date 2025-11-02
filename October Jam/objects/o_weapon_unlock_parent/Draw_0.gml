draw_self()
if my_weapon != noone {
	var _x = x + 64
	var _y = y + 38
	
	draw_sprite(my_weapon.sprite_icon,0,_x,_y)
	draw_set_halign(fa_center)
	draw_set_alpha(cur_alpha)
	draw_set_font(f_main_6)
	draw_set_colour(c_white)
	draw_set_valign(fa_top)
	draw_text_ext(x+64,y+68,my_weapon.name,16,200)
	

	if my_weapon.copies_collected < my_weapon.copies_to_unlock {
		draw_set_font(f_main_12)
		draw_text(x+64,y+90,$"{my_weapon.copies_collected}/{my_weapon.copies_to_unlock}")
	} else {
		draw_set_font(f_main_6)
		if my_weapon.selected {
			draw_text(x+64,y+90,"Selected")
		} else {
			draw_text(x+64,y+90,"Not selected")
		}
	}
}

draw_set_alpha(1)