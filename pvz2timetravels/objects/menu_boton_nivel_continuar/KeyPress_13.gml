/// @description Insert description here
if click = true
{
	if instance_exists(camara)
	{
		camara.funcionar = true;
	}
	image_index = 1;
	click = false;
	audio_play_sound(sound_menu_boton,5,0);
	instance_activate_all();
	objetivo_cuales.dibujar = false;
	objetivo_cuales.cual = 0;
	instance_destroy(objetivo_cuales_seguir);
	instance_destroy();
}