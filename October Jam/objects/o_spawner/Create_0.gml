spawn_min_time = room_speed * 3
spawn_max_time = room_speed * 7
spawn_min_count = 1
spawn_max_count = 2
spawn_margin = 64

spawn_timer = irandom_range(spawn_min_time, spawn_max_time)
alarm[0] = room_speed * irandom_range(30,60)