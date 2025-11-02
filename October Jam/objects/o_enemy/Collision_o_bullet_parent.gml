if other.creator == o_player { 
	hp -= global.player_setup.cur_gun.dmg
	instance_destroy(other)

	if hp <= 0 {
		instance_destroy(self)
		instance_destroy(enemy_gun)
		global.player_setup.xp ++
	}
}