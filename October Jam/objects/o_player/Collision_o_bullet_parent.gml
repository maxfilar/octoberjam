if other.creator != o_player && !invincible {
    instance_destroy(other)
    
    sc_check_existing_of_gun()

    var _dmg = other.creator.my_gun.dmg

    if (global.player_setup.shield > 0) {
        global.player_setup.shield -= _dmg

        if (global.player_setup.shield < 0) {
            global.player_setup.hp += global.player_setup.shield;
            global.player_setup.shield = 0
        }
    } else {
        global.player_setup.hp -= _dmg
    }
	
	instance_create_depth(x,y,-9999,o_hit_screen)
	
	sc_screen_shake(10,15,1)

    invincible = 45
}
