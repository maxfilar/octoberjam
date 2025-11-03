// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function sc_enemy_shotgun_shoot(){
	var _x = creator.x + creator.sprite_width / 2
	var _y = creator.y + creator.sprite_height / 2
	
	repeat (5) {
		var _blt = instance_create_layer(_x,_y,"Instances",o_bullet)
		with _blt {
			direction = other.ang + irandom_range(-60,60)
			image_angle = direction
			creator = other
		}
	}
}