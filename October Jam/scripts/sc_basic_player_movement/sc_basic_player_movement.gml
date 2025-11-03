// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function sc_basic_player_movement(){
	input_move_top = keyboard_check(ord("W"))
	input_move_down = keyboard_check(ord("S"))
	input_move_left = keyboard_check(ord("A"))
	input_move_right = keyboard_check(ord("D"))

	dir_y = input_move_down - input_move_top
	dir_x = input_move_right - input_move_left

	xspd = dir_x * global.player_setup.spd
	yspd = dir_y * global.player_setup.spd

	if place_meeting(x+xspd,y,o_wall) 
		xspd = 0
	if place_meeting(x,y+yspd,o_wall) 
		yspd = 0

	x += xspd
	y += yspd
}