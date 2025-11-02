cur_alpha = selected ? 1 : 0.25
image_alpha = lerp(image_alpha,cur_alpha,0.1)

if keyboard_check_released(vk_space) and selected {
	script_execute(my_buff._script)
	array_delete(o_buffs_setup.buff_list,0,array_length(o_buffs_setup.buff_list))
	global.pause = false
	global.player_setup.hp = global.player_setup.max_hp
	instance_destroy(o_buff)
}