/// @description mover a la room del menu editor
if click == false and !instance_exists(obj_transicion)
{
	click = true;
	image_index = 1;
	instance_create_depth(0,0,-10, obj_transicion);
	audio_play_sound(sound_menu_boton,5,0);
	global.destino_sit = 1;
	global.destino = menu_editor_general;
}