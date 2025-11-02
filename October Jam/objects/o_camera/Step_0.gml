x_next = tracked_object.x
y_next = tracked_object.y


x += (x_next - x) / 10
y += (y_next - y) / 10

x = clamp(x, view_halfX, room_width - view_halfX)
y = clamp(y, view_halfY, room_height - view_halfY)

screen_shake()

camera_set_view_pos(camera, x - view_halfX, y - view_halfY)

camera_set_view_angle(camera,shake_angle)	

var cam_x = camera_get_view_x(view_camera[0]);	

var map_width = room_width;

if (cam_x <= 0 || cam_x + camera_width >= map_width) {
	camera_at_border_x = true;
} else {
	camera_at_border_x = false;
}
