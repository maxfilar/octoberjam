if room == r_tutorial || room == r_arena {
	draw_set_halign(fa_left)
	draw_text(10,10,$"HP: {global.player_setup.hp}")
	if global.player_setup.cur_gun != noone
		draw_text(10,30,$"AMMO: {global.player_setup.cur_gun.ammo}")
}