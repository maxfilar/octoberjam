if global.pause { image_speed = 0; exit }
image_speed = 1

target = instance_exists(o_player) ? o_player : noone
	
if target != noone {
	var _tar_x = target.x + target.sprite_width / 2
	var _tar_y = target.y + target.sprite_height / 2
		
	ang = point_direction(x,y,_tar_x,_tar_y)
	direction = ang
	
	var _dist = distance_to_object(target)
	
	if _dist > (o_camera.camera_width / 2) * 0.8 {
		xspd = lengthdir_x(spd,ang)
		yspd = lengthdir_y(spd,ang)
		
		x += xspd
		y += yspd
	}
}

if invincible > 0 
	invincible --