/// @description dejar de  mover el mouse y aplicar el volumen
if click == true
{
	click = false;
	global.vol_deslizar = false;
	global.vol_musica_posY = xstart-x;
	ini_open("general.ini");
	ini_write_real("volumen","musica_posY", global.vol_musica_posY);
	ini_write_real("volumen","musica", global.vol_musica);
	ini_close();

	if !audio_is_playing(music_menu_vol_musica) {audio_play_sound(music_menu_vol_musica,1,0);}
}