// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function sc_level_up(){
	global.player_setup.lvl ++
	global.player_setup.xp_next = round(global.player_setup.xp_next * 1.2)
	global.pause = true
	
	var _buff_list = []
	for (var i = 0; i < array_length(global.buffs); i++) {
		array_push(_buff_list,global.buffs[i])
	}
	
	randomize()
	for (var i = 0; i < 3; i++) {
		var _rand = irandom(array_length(_buff_list)-1)
		
		var _x = o_camera.x - o_camera.camera_width / 2
		var _y = o_camera.y
		var _xdiff = camera_get_view_width(view_camera[0]) * 0.2
		var _buff = instance_create_layer(_x + _xdiff * (i+1),_y-16,"GUI",o_buff)
		with _buff {
			my_buff = _buff_list[_rand]
		}
		array_delete(_buff_list,_rand,1)
	}
}