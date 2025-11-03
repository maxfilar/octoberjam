if global.pause { image_speed = 0; exit }
image_speed = 1

xspd = lengthdir_x(blt_spd,direction)
yspd = lengthdir_y(blt_spd,direction)

x += xspd
y += yspd

blt_spd = creator == o_player ? 15 : 5