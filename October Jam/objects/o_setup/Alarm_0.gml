global.time.seconds ++
if global.time.seconds == 60 {
	global.time.seconds = 0
	global.time.minutes ++
}
if global.time.minutes == 60 {
	global.time.minutes = 0
	global.time.hours ++
}

if room == r_arena {
	alarm[0] = 60
}