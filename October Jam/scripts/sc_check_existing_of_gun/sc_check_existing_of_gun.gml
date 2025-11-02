// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function sc_check_existing_of_gun(){
	var copy_exists = false 
	for (var i = 0; i < array_length(copied_guns); i++) { 
		if other.creator == copied_guns[i] { 
			copy_exists = true 
			break 
		} 
	} 
	
	if !copy_exists {
		for (var i = 0; i < array_length(global.guns); i++) {
			if global.guns[i].name == other.creator.my_gun.name {
				global.guns[i].copies_collected ++
				break
			}
		}
	}
	
	
	var is_gun_similar = false
	if global.player_setup.cur_gun != noone && other.creator.my_gun.name == global.player_setup.cur_gun.name
		is_gun_similar = true
	
	if !is_gun_similar {
		for (var i = 0; i < array_length(global.guns); i++) {
			if global.guns[i].name == other.creator.my_gun.name {
				global.player_setup.cur_gun = global.guns[i]
				array_push(copied_guns,other.creator)
				break
			}
		}
	} else {
		if !copy_exists { 
			array_push(copied_guns,other.creator)
			global.player_setup.cur_gun.ammo += other.creator.my_gun.ammo 
		} 
	}
}