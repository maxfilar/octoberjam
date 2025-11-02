if global.pause { image_speed = 0; exit }
image_speed = 1

if creator != noone {
	var _x = creator.x + creator.sprite_width / 2
	var _y = creator.y + creator.sprite_height / 2
	
	x = _x
	y = _y
	
	if my_gun != noone {
		sprite_index = my_gun.sprite
	}
	
	target = instance_exists(o_player) ? o_player : noone
	
	if target != noone {
		var _tar_x = target.x + target.sprite_width / 2
		var _tar_y = target.y + target.sprite_height / 2
		
		ang = point_direction(x,y,_tar_x,_tar_y)
		direction = ang
		image_angle = ang
		
		if ang < 270 && ang > 90 {
			image_yscale = -1
		} else {
			image_yscale = 1
		}
		
		var _dist = distance_to_object(target)
		
		if !time_to_fire && _dist <= (o_camera.camera_width / 2) * 0.8 {
			script_execute(my_gun.shoot_type_enemy)
			randomize()
			time_to_fire = my_gun.rate_of_fire * 3 + irandom_range(-my_gun.rate_of_fire * 1.5, my_gun.rate_of_fire * 1.5)
		}
	}
	
	if time_to_fire > 0 time_to_fire --
}