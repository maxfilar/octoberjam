x -= spd
y -= spd

var target_r = 0
var target_g = 0
var target_b = 0

switch room {
	case r_map:
	case r_guns:
	case r_tutorial:
		visible = true
		target_r = 16
		target_g = 24
		target_b = 36
	break
	default:
		visible = false
	break
}

cur_r = lerp(cur_r, target_r, 0.1)
cur_g = lerp(cur_g, target_g, 0.1)
cur_b = lerp(cur_b, target_b, 0.1)

cur_color = make_color_rgb(cur_r, cur_g, cur_b)