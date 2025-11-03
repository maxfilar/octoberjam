time_to_press = 0
global.pause = false
for (var i = 0; i < array_length(global.guns); i++) {
	global.guns[i].ammo = global.guns[i].basic_ammo
	global.guns[i].dmg = global.guns[i].basic_dmg
}
if room == r_arena {
	alarm[0] = 60
}