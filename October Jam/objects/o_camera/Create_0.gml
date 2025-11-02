camera = view_camera[0]

view_halfX = camera_get_view_width(camera) / 2
view_halfY = camera_get_view_height(camera) / 2


tracked_object = o_player

x = tracked_object.x
y = tracked_object.y

shake_remaining = 0
shake_strenght = 0
shake_duration = 0
shake_smooth = 1
shake_angle = 0

function screen_shake() {
	x += (irandom_range(-shake_remaining,shake_remaining)) / shake_smooth 
	y += (irandom_range(-shake_remaining,shake_remaining)) / shake_smooth
	shake_remaining = max(0, shake_remaining - shake_strenght / shake_duration )
}

x_next = xstart
y_next = ystart

camera_at_border_x = false;
camera_width = camera_get_view_width(view_camera[0]);