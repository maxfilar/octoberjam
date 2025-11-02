target = instance_exists(o_player) ? o_player : noone

if target != noone {
	var _x = target.x + target.sprite_width / 2
	var _y = target.y + target.sprite_height / 2
	x = _x
	y = _y
	
	var _nearest = instance_nearest(x, y, o_enemy)
	if instance_exists(_nearest) {
		var _tar_x = _nearest.x+_nearest.sprite_width / 2
		var _tar_y = _nearest.y+_nearest.sprite_height / 2
		ang = point_direction(x, y, _tar_x, _tar_y)
	} else {
		ang = image_angle
	}
	
	direction = ang
	image_angle = ang

	if ang < 270 && ang > 90 {
		image_yscale = -1
	} else {
		image_yscale = 1
	}
	
	if global.player_setup.cur_gun != noone {
		sprite_index = global.player_setup.cur_gun.sprite
		if keyboard_check(vk_space) and !time_to_fire and global.player_setup.cur_gun.ammo {
			script_execute(global.player_setup.cur_gun.shoot_type_player)
		}
	}
	
	if time_to_fire > 0 time_to_fire --
}

