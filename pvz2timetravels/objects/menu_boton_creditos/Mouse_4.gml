/// @description Inserte aquí la descripción
if click = true and click2 = false and !instance_exists(obj_transicion) and !instance_exists(obj_transicion_inicio) and click2 = false// and !instance_exists(menu_escribir_primeravez)
{
	click = false;
	image_index = 1;
	instance_create_depth(0,0,-10, obj_transicion);
	audio_play_sound(sound_menu_boton, 50, 0);
	global.destino = menu_zona_creditos;
	global.destino_sit = 0;
}