target = instance_exists(o_player) ? o_player : noone
	
if target != noone {
	var _tar_x = target.x + target.sprite_width / 2
	var _tar_y = target.y + target.sprite_height / 2
		
	ang = point_direction(x,y,_tar_x,_tar_y)
	direction = ang
}