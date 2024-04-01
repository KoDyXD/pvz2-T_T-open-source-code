/// @description Inserte aquí la descripción
if click = true
{
	image_index = 1;
	click = false;
	instance_create_depth(0,0,-10, obj_transicion);
	audio_sound_gain(music_menu_recom,0,800);
	audio_play_sound(sound_menu_boton, 50, 0);
	alarm_set(0,60);
}