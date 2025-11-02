for (var i = 0; i < array_length(global.guns); i++) {
	var _weapon = instance_create_layer(16+i*144,128,"Instances",o_weapon_unlock_parent)
	with _weapon {
		my_weapon = global.guns[i]
		array_push(global.map,self)
	}
}