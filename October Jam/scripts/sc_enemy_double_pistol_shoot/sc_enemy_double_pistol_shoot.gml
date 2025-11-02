// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function sc_enemy_double_pistol_shoot(){
	var _x = creator.x + creator.sprite_width / 2
	var _y = creator.y + creator.sprite_height / 2
	
	var _blt = instance_create_layer(_x,_y,"Instances",o_bullet)
	with _blt {
		direction = other.ang
		image_angle = other.ang
		creator = other
	}
	var _blt = instance_create_layer(_x,_y,"Instances",o_bullet)
	with _blt {
		direction = other.ang+180
		image_angle = other.ang+180
		creator = other
	}
}