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
		array_push(copied_guns,other.creator)
		if other.creator.my_gun != global.player_setup.cur_gun {
			global.player_setup.cur_gun = other.creator.my_gun
		} else {
			global.player_setup.cur_gun.ammo += other.creator.my_gun.ammo
		}
	}
}