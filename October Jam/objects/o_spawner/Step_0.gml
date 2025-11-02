spawn_timer -= 1

if (spawn_timer <= 0) {
    var count = irandom_range(spawn_min_count, spawn_max_count)

    for (var i = 0; i < count; i++) {
        
        var side = irandom(3)
        var _x, _y;

        switch (side) {
            case 0:
                _x = spawn_margin
                _y = irandom_range(spawn_margin, room_height - spawn_margin)
                break
            case 1:
                _x = room_width - spawn_margin
                _y = irandom_range(spawn_margin, room_height - spawn_margin)
                break
            case 2:
                _x = irandom_range(spawn_margin, room_width - spawn_margin)
                _y = spawn_margin
                break
            case 3:
                _x = irandom_range(spawn_margin, room_width - spawn_margin)
                _y = room_height - spawn_margin
                break
        }

        instance_create_layer(_x, _y, "Instances", o_enemy)
    }

    spawn_timer = irandom_range(spawn_min_time, spawn_max_time)
}
