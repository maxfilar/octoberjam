key_next = keyboard_check_released(ord("D"))
key_back = keyboard_check_released(ord("A"))
	
if key_back && cur_marker > 0 {
	cur_marker --
	audio_play_sound(sd_change,1,0)
} else if key_next && cur_marker < array_length(global.map) - 1 {
	cur_marker ++
	audio_play_sound(sd_change,1,0)
}
	
for (var i = 0; i < array_length(global.map); i++) {
	global.map[i].selected = false
}
global.map[cur_marker].selected = true
