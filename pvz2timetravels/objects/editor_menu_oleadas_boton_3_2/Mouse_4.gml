/// @description aceptar cambios
if string_length(padre_oleadas.cantidad) > 0 and string_length(padre_banderas.cantidad) > 0 and real(padre_oleadas.cantidad) > 0 and real(padre_banderas.cantidad) > 0
{
	audio_play_sound(sound_menu_boton_perfil_cambiar,5,0);
	var _oleadas = real(padre_oleadas.cantidad);
	var _banderas = real(padre_banderas.cantidad);

	if _oleadas/_banderas > 0 and frac(_oleadas/_banderas) = 0
	{
		global.editor_nivel_base[2] = _oleadas;
		global.editor_nivel_base[3] = _banderas;
		
		for (var i = array_length(global.editor_oleada_cual)-1; i > 0; --i) {
		    if real(global.editor_oleada_cual[i][0]) > real(global.editor_nivel_base[2])
			{
				array_delete(global.editor_oleada_cual,i,1);
			}
		}
		
		instance_destroy();
		instance_destroy(editor_menu_oleadas_boton_3_3);
		instance_destroy(editor_menu_oleadas_boton_3_1);
		instance_destroy(editor_menu_oleadas_boton_2_2);
		editor_menu_oleadas_boton_2_1.click = false;
		editor_menu_oleadas_boton_1.editor_oleadas = string(global.editor_nivel_base[2]);
		editor_menu_oleadas_boton_1.editor_banderas = string(global.editor_nivel_base[3]);
		editor_menu_oleadas_boton_1.xx = -1;
		editor_menu_oleadas_boton_1.yy = -1;
		editor_menu_oleadas_boton_1.alarm[0] = 1
	}
}