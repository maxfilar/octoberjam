gpu_set_tex_filter(false)
enum SHOOT_INPUT_TYPES {
	PRESS,
	TAP
}

global.guns = [
	{
		name: "Pistol",
		sprite: s_pistol,
		dmg: 5,
		rate_of_fire: 20,
		basic_ammo: 8,
		ammo: 8,
		shoot_type_player: sc_player_pistol_shoot,
		shoot_type_enemy: sc_enemy_pistol_shoot,
		copies_to_unlock: 8,
		copies_collected: 0,
		selected: false,
	},
	{
		name: "Double Pistol",
		sprite: s_double_pistol,
		dmg: 5,
		rate_of_fire: 20,
		basic_ammo: 16,
		ammo: 16,
		shoot_type_player: sc_player_double_pistol_shoot,
		shoot_type_enemy: sc_enemy_double_pistol_shoot,
		copies_to_unlock: 8,
		copies_collected: 0,
		selected: false,
	},
]
global.enemy_guns = []
for (var i = 0; i < array_length(global.guns); i++) {
	array_push(global.enemy_guns,struct_copy(global.guns[i]))
}