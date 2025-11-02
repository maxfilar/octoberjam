global.player_setup = {
	max_hp: 100,
	hp: 100,
	spd: 5,
	cur_gun: noone,
	shield: 0,
	lvl: 1,
	xp: 0,
	xp_next: 3,
}

for (var i = 0; i < array_length(global.guns); i++) {
	if global.guns[i].selected {
		global.player_setup.cur_gun = global.guns[i]
		break
	}
}

copied_guns = []
invincible = 0