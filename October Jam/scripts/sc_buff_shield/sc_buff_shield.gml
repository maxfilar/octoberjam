// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function sc_buff_dmg(_count){
	global.player_setup.cur_gun.dmg += round(global.player_setup.cur_gun.basic_dmg * _count)
}