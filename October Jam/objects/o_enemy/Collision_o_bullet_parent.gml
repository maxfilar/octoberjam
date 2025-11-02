if other.creator == o_player && !invincible { 
	hp -= global.player_setup.cur_gun.dmg
	instance_create_layer(other.x,other.y,"Instances",o_hit)
	instance_destroy(other)
	invincible = 10

	if hp <= 0 {
		instance_destroy(self)
		instance_destroy(enemy_gun)
		global.player_setup.xp ++
	}
}