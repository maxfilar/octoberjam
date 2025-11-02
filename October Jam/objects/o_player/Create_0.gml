global.player_setup = {
	hp: 100,
	spd: 5,
	cur_gun: noone,
}

for (var i = 0; i < array_length(global.guns); i++) {
	if global.guns[i].selected {
		global.player_setup.cur_gun = global.guns[i]
		break
	}
}

copied_guns = []
invincible = 0