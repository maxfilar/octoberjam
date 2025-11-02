xdiff = xstart
ydiff = ystart

function update_position() {
    var _x = o_camera.x - camera_get_view_width(view_camera[0]) / 2 + xdiff;
    var _y = o_camera.y - camera_get_view_height(view_camera[0]) / 2 + ydiff;
    x = _x;
    y = _y;
}
