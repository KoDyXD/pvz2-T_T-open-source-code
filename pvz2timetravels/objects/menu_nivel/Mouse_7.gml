/// @description ir al nivel
if seleccionar = true and click = true and !instance_exists(obj_transicion) and click2 = true
{
	click = false;
	instance_create_depth(0,0,-10, obj_transicion);
	audio_play_sound(sound_menu_boton, 50, 0);
	alarm_set(0,60);
}