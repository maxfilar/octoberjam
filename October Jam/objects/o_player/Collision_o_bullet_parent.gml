if other.creator != o_player && !invincible {
	instance_destroy(other)
	
	sc_check_existing_of_gun()
	
	global.player_setup.hp -= other.creator.my_gun.dmg
	invincible = 45
}