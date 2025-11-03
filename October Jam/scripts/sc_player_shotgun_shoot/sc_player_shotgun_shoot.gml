// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function sc_player_shotgun_shoot(){
	var _x = target.x + target.sprite_width / 2
	var _y = target.y + target.sprite_height / 2
	
	repeat (5) {
		var _blt = instance_create_layer(_x,_y,"Instances",o_bullet)
		with _blt {
			direction = other.direction + irandom_range(-20,20)
			image_angle = direction
			creator = o_player
		}
	}
	
	sc_screen_shake(
		global.player_setup.cur_gun.shake[0],
		global.player_setup.cur_gun.shake[1],
		global.player_setup.cur_gun.shake[2],
	)
	time_to_fire = global.player_setup.cur_gun.rate_of_fire
	global.player_setup.cur_gun.ammo --
}