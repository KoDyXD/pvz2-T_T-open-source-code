/// @description forzar reanudar partida
if global.reanudar = true
{
	audio_stop_sound(music_menu_vol_musica);
	audio_stop_sound(music_menu_vol_efectos);
	audio_play_sound(sound_menu_boton_perfil_cambiar,5,0);
	with(menu_boton_vol_efectos)
	{
		global.vol_efectos_posY = xstart-x;
		ini_open("general.ini");
		ini_write_real("volumen","efectos_posY", global.vol_efectos_posY);
		ini_write_real("volumen","efectos", global.vol_efectos);
		ini_close();
	}
	with(menu_boton_vol_musica)
	{
		global.vol_musica_posY = xstart-x;
		ini_open("general.ini");
		ini_write_real("volumen","musica_posY", global.vol_musica_posY);
		ini_write_real("volumen","musica", global.vol_musica);
		ini_close();
	}
	global.reanudar = false;
	click = false;
	image_index = 0;
	instance_activate_all();
	instance_destroy(menu_regresar);
	instance_destroy(menu_reiniciar);
	instance_destroy(menu_reanudar);
	instance_destroy(menu_editor);
	instance_destroy(menu_boton_vol_musica);
	instance_destroy(menu_boton_vol_efectos);
	instance_destroy(menu_boton_objetivos_cuales);
	instance_destroy(menu_boton_graficos_pantalla_completa);
	audio_resume_all();
}