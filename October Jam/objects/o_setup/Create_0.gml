gpu_set_tex_filter(false)

global.guns = [
	{
		name: "Pistol",
		sprite: s_pistol,
		dmg: 5,
		rate_of_fire: 20,
		ammo: 8,
		shoot_type: sc_pistol_shoot,
	},
]

global.player_setup = {
	hp: 100,
	spd: 5,
	cur_gun: noone,
}