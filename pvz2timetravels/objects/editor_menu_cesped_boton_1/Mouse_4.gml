/// @description Insert description here
if global.click = false
{
	if click = false
	{
		audio_play_sound(sound_menu_boton_perfil_opciones,5,0);
		click = true;
		global.click = true;
		var _i = instance_create_layer(5.5*166,3.5*186,"hud",editor_menu_cesped_boton_2);
		_i.padre = id;
		_i.cesped = 1;
		var _i = instance_create_layer(5.5*166,4.5*186,"hud",editor_menu_cesped_boton_2);
		_i.padre = id;
		_i.cesped = 2;
		var _i = instance_create_layer(5.5*166,5.5*186,"hud",editor_menu_cesped_boton_2);
		_i.padre = id;
		_i.cesped = 3;
	}
}
else if click = true
{
	audio_play_sound(sound_menu_boton_perfil_cancelar,5,0);
	click = false;
	global.click = false;
	instance_destroy(editor_menu_cesped_boton_2);
	
	for (var i = 0; i < array_length(global.editor_oleada_cual); ++i) {
	    if global.editor_oleada_cual[i][0] = -1
		{
			if global.editor_oleada_cual[i][1] = "cesped"	//modificar grupo de cesped si existe
			{
				global.editor_oleada_cual[i] = [-1,"cesped",editor_cesped];
				break;
			}
		}
		else if i >= array_length(global.editor_oleada_cual)-1	//crear grupo de cesped si no existe
		{
			var _tam = array_length(global.editor_oleada_cual);
			global.editor_oleada_cual[_tam] = [-1,"cesped",editor_cesped];
		}
	}
}