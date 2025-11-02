gpu_set_tex_filter(false)
enum SHOOT_INPUT_TYPES {
	PRESS,
	TAP
}

function Gun(_name,_sprite_game,_sprite_icon,_dmg,_rof,_ammo,_player_shoot,_enemy_shoot,_copies,_shake) constructor {
	name = _name
	sprite = _sprite_game
	sprite_icon = _sprite_icon
	dmg = _dmg
	rate_of_fire = _rof
	basic_ammo = _ammo
	ammo = _ammo
	shoot_type_player = _player_shoot
	shoot_type_enemy = _enemy_shoot
	copies_to_unlock = _copies
	copies_collected = 0
	selected = false
	shake = _shake
}

global.guns = [
	new Gun("Pistol",
		s_pistol,s_pistol_icon,
		5,20,8,
		sc_player_pistol_shoot,sc_enemy_pistol_shoot,
		8, [10,10,1]
	),
	new Gun("Double Pistol",
		s_double_pistol,s_double_pistol_icon,
		5,20,16,
		sc_player_double_pistol_shoot,sc_enemy_double_pistol_shoot,
		8, [10,10,1]
	),
]
global.enemy_guns = []
for (var i = 0; i < array_length(global.guns); i++) {
	array_push(global.enemy_guns,struct_copy(global.guns[i]))
}
global.pause = false
time_to_press = 0
time_to_leave = 120