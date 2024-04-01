/// @description anterior objetivo
if objetivo_cuales.cual > 0 and direccion = "izquierda"
{
	objetivo_cuales.cual -= 1;
	image_index = 1;
	alarm_set(0,15);
	audio_play_sound(sound_menu_boton_perfil_aceptar,10,0);
}