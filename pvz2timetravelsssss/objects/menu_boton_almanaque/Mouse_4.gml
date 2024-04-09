/// @description Inserte aquí la descripción
if click = false and !instance_exists(obj_transicion)
{
	image_index = 1;
	click = true;
	instance_create_depth(0,0,-10, obj_transicion);
	audio_play_sound(sound_menu_boton, 50, 0);
	alarm_set(0,60);
}