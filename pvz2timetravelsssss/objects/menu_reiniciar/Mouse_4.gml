/// @description Inserte aquí la descripción
if click = true and !instance_exists(obj_transicion)
{
	if instance_exists(menu_boton_pausar)
	{
		if menu_boton_pausar.click2 = false
		{
			image_index = 1;
			click = false;
			instance_create_depth(0,0,-10, obj_transicion);
			audio_play_sound(sound_menu_boton, 50, 0);
			alarm_set(0,60);
		}
	}
	if instance_exists(menu_perder)
	{
		image_index = 1;
		click = false;
		instance_create_depth(0,0,-10, obj_transicion);
		audio_play_sound(sound_menu_boton, 50, 0);
		alarm_set(0,60);
	}
}