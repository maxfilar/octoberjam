alarm[0] = room_speed * irandom_range(30,60)

if spawn_min_time > 30 {
	spawn_min_time = spawn_min_time - spawn_min_time * 0.25
}

if spawn_max_time > 60 {
	spawn_max_time = spawn_max_time - spawn_max_time * 0.25
}

spawn_min_count ++
spawn_max_count ++