// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function sc_player_double_pistol_shoot(){
	var _x = target.x + target.sprite_width / 2
	var _y = target.y + target.sprite_height / 2
	
	var _blt = instance_create_layer(_x,_y,"Instances",o_bullet)
	with _blt {
		direction = other.direction
		image_angle = direction
		creator = o_player
	}
	var _blt = instance_create_layer(_x,_y,"Instances",o_bullet)
	with _blt {
		direction = other.direction + 180
		image_angle = direction + 180
		creator = o_player
	}
			
	time_to_fire = global.player_setup.cur_gun.rate_of_fire
	global.player_setup.cur_gun.ammo -= 2
}