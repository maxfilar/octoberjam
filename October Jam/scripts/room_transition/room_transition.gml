function room_transition(_room){
	if !instance_exists(o_transition) {
    var inst = instance_create_depth(0, 0, -9999, o_transition);
	    inst.target_rm = _room;
	}
}