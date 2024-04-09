/// @description dejar de  mover el mouse y aplicar el volumen
if click == true
{
	click = false;
	global.vol_deslizar = false;
	global.vol_efectos_posY = xstart-x;
	ini_open("general.ini");
	ini_write_real("volumen","efectos_posY", global.vol_efectos_posY);
	ini_write_real("volumen","efectos", global.vol_efectos);
	ini_close();

	if !audio_is_playing(music_menu_vol_efectos) {audio_play_sound(music_menu_vol_efectos,1,0);}
}