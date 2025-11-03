spawn_min_time = room_speed * 3
spawn_max_time = room_speed * 7
spawn_min_count = 1
spawn_max_count = 2
spawn_margin = 64

spawn_timer = irandom_range(spawn_min_time, spawn_max_time)
alarm[0] = room_speed * irandom_range(50,100)

var start_enemy_count = irandom_range(5, 15)

for (var i = 0; i < start_enemy_count; i++) {
    var _x = irandom_range(spawn_margin * 2, room_width - spawn_margin * 2)
    var _y = irandom_range(spawn_margin * 2, room_height - spawn_margin * 2)
    
    instance_create_layer(_x, _y, "Instances", o_enemy)
}