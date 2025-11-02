draw_self()
if selected {
	draw_sprite(s_gun_unlock_selected,0,x,y)
}
if my_weapon != noone {
	var _x = x + sprite_get_width(my_weapon.sprite) / 2
	var _y = y + 32
	
	draw_sprite(my_weapon.sprite,0,_x,_y)
	draw_set_halign(fa_center)
	draw_text(x+64,y+48,my_weapon.name)
	
	if my_weapon.copies_collected < my_weapon.copies_to_unlock {
		draw_text(x+64,y+80,"Copies collected:")
		draw_text(x+64,y+96,$"{my_weapon.copies_collected}/{my_weapon.copies_to_unlock}")
	} else {
		if my_weapon.selected {
			draw_text(x+64,y+90,"Selected")
		} else {
			draw_text(x+64,y+90,"Not selected")
		}
	}
}