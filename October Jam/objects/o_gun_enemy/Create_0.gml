randomize()
var gun_template = global.enemy_guns[irandom(array_length(global.enemy_guns) - 1)]
my_gun = struct_copy(gun_template)
creator = noone
target = noone
time_to_fire = 120