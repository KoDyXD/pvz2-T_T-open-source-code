/// @description Inserte aquí la descripción
if click2 = false and !instance_exists(obj_transicion) and !instance_exists(obj_transicion_inicio)
{
	if click = true
	{
		click = false;
		if texto = "jugar"
		{
			image_index = 1;
			audio_sound_gain(musica_menu.duracion,0,900);
			audio_play_sound(sound_menu_boton, 50, 0);
			alarm_set(0,60);
			var _inst = instance_create_depth(0,0,-10, obj_transicion);
			if global.primeravez = false {_inst.colors = c_black; _inst.cantidad = 0.02;}
			menu_boton_iniciar_salir.click2 = true;
		}

		if texto = "salir"
		{
			game_restart();
			game_end();
		}
	}
}