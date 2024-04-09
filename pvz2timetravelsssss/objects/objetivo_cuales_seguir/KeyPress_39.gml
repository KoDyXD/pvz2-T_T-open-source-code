/// @description siguiente objetivo
if objetivo_cuales.cual < array_length(objetivo_cuales.frase)-1 and direccion = "derecha"
{
	objetivo_cuales.cual += 1;
	image_index = 1;
	alarm_set(0,15);
	audio_play_sound(sound_menu_boton_perfil_aceptar,10,0);
}