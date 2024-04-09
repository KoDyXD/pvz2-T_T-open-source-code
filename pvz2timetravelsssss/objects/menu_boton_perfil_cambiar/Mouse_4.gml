/// @description cambiar de perfil
if click2 = false
{
	if global.nombre != global.usuarios[cual]
	{
		global.nombre = global.usuarios[cual];
		ini_open("general.ini");
		ini_write_string("usuarios","nombre",global.nombre);
		ini_close();
		scr_perfil_extras(global.nombre);
		scr_perfil_niveles(global.nombre);
		scr_perfil_plantas(global.nombre);
		audio_play_sound(sound_menu_boton_perfil_cambiar,5,0);
	}
}