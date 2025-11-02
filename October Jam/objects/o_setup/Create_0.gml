gpu_set_tex_filter(false)

function Gun(_name,_sprite_game,_sprite_icon,_dmg,_rof,_ammo,_player_shoot,_enemy_shoot,_copies,_shake) constructor {
	name = _name
	sprite = _sprite_game
	sprite_icon = _sprite_icon
	dmg = _dmg
	basic_dmg = _dmg
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

function Buff(_name,_icon,__script) constructor {
	name = _name
	sprite = _icon
	_script = __script
}

global.buffs = [
	new Buff("+5 MAXHP",s_hpplus,function() {sc_buff_hpplus(5)}),
	new Buff("+10 MAXHP",s_hpplus,function() {sc_buff_hpplus(10)}),
	new Buff("+20 MAXHP",s_hpplus,function() {sc_buff_hpplus(20)}),
	
	new Buff("+10% DMG",s_dmgplus,function() {sc_buff_dmg(0.1)}),
	new Buff("+25% DMG",s_dmgplus,function() {sc_buff_dmg(0.1)}),
	new Buff("+50% DMG",s_dmgplus,function() {sc_buff_dmg(0.1)}),
	
	new Buff("+1 SPD",s_spdplus,function() {sc_buff_spd(1)}),
	new Buff("+2 SPD",s_spdplus,function() {sc_buff_spd(2)}),
	new Buff("+3 SPD",s_spdplus,function() {sc_buff_spd(3)}),
	
	new Buff("+15 SHIELD",s_shieldplus,function() {sc_buff_shield(15)}),
	new Buff("+30 SHIELD",s_shieldplus,function() {sc_buff_shield(30)}),
	new Buff("+50 SHIELD",s_shieldplus,function() {sc_buff_shield(50)}),
	
	new Buff("+AMMO X2",s_ammoplus,function() {sc_buff_ammo(2)}),
	new Buff("+AMMO X3",s_ammoplus,function() {sc_buff_ammo(3)}),
	new Buff("+AMMO X5",s_ammoplus,function() {sc_buff_ammo(5)}),
]
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