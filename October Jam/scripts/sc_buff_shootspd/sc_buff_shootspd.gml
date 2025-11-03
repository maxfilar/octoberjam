// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function sc_buff_shootspd(_count){
	if global.player_setup.cur_gun.rate_of_fire > 1 {
		global.player_setup.cur_gun.rate_of_fire -= global.player_setup.cur_gun.rate_of_fire * _count
	}
}