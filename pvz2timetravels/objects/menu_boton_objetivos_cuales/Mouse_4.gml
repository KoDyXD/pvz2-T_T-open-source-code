/// @description Inserte aquí la descripción
if click = false
{
	click = true;
	menu_boton_pausar.click2 = true;
	objetivo_cuales.alarm[1] = 1;
	audio_play_sound(sound_menu_boton_perfil_opciones,5,0);
}
else
{
	click = false;
	menu_boton_pausar.alarm[0] = 1;
	objetivo_cuales.dibujar = false;
	objetivo_cuales.cual = 0;
	instance_destroy(objetivo_cuales_seguir);
	audio_play_sound(sound_menu_boton_perfil_cambiar,5,0);
}