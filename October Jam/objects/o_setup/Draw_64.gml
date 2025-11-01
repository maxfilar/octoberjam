draw_text(10,10,$"HP: {global.player_setup.hp}")
if global.player_setup.cur_gun != noone {
	draw_text(10,30,$"AMMO: {global.player_setup.cur_gun.ammo}")
}