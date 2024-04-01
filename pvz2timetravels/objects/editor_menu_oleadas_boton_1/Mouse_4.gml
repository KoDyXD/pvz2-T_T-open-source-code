/// @description oleadas del nivel
if !instance_exists(editor_menu_oleadas_boton_3_1) and !instance_exists(editor_menu_oleadas_boton_grupos_cerrar)
{
	if global.click = false	//abrir menu de oleadas
	{
		if click = false
		{
			audio_play_sound(sound_menu_boton_perfil_opciones,5,0);
			image_index = 1;
			global.click = true;
			click = true;
			alarm[0] = 1;
		}
	}
	else if click = true	//cerrar menu de oleadas
	{
		audio_play_sound(sound_menu_boton_perfil_cancelar,5,0);
		image_index = 0;
		global.click = false;
		click = false;	//cerrar menu
		instance_destroy(editor_menu_oleadas_boton_2_1);
		instance_destroy(editor_menu_oleadas_boton_2_2);
		xx = -1;
		yy = -1;
	}
}