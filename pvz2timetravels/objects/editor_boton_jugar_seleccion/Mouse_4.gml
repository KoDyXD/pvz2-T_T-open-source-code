/// @description que hacer si se hace click
if !instance_exists(obj_transicion)
{
	if click == false
	{
		image_index = 1;
		click = true;
	
		switch(cual)
		{
			case "Jugar y guardar cambios":
				ini_open(global.editor_nivel_elegido);
				//guardar todos los datos de la oleada en el archivo .ini
				var _list = ds_list_create();
				for (var i = 0; i < array_length(global.editor_oleada_cual); ++i) {
				ds_list_add(_list,global.editor_oleada_cual[i]);
				}
				var _listaguardar = ds_list_write(_list);
				ini_write_string("editor_oleada_cual","oleadas",_listaguardar);
				ds_list_destroy(_list);
		
				//guardar datos generales del nivel en el archivo.ini
				var _list = ds_list_create();
				for (var i = 0; i < array_length(global.editor_nivel_base); ++i) {
				    ds_list_add(_list,global.editor_nivel_base[i]);
				}

				var _listaguardar = ds_list_write(_list);
				ini_write_string("editor_nivel_base","datos",_listaguardar);
				ds_list_destroy(_list);
		
				ini_close();
				instance_create_depth(0,0,-10, obj_transicion);
				audio_play_sound(sound_menu_boton_perfil_aceptar, 50, 0);
				global.nivel_cual = nivel_editor_0_1;
				global.destino = nivel_plantilla_0_0;
				global.destino_sit = 5;
			break;
			case "Guardar cambios":
				alarm_set(0,15);
			
				ini_open(global.editor_nivel_elegido);
				//guardar todos los datos de la oleada en el archivo .ini
				var _list = ds_list_create();
				for (var i = 0; i < array_length(global.editor_oleada_cual); ++i) {
				ds_list_add(_list,global.editor_oleada_cual[i]);
				}
				var _listaguardar = ds_list_write(_list);
				ini_write_string("editor_oleada_cual","oleadas",_listaguardar);
				ds_list_destroy(_list);
		
				//guardar datos generales del nivel en el archivo.ini
				var _list = ds_list_create();
				for (var i = 0; i < array_length(global.editor_nivel_base); ++i) {
				    ds_list_add(_list,global.editor_nivel_base[i]);
				}

				var _listaguardar = ds_list_write(_list);
				ini_write_string("editor_nivel_base","datos",_listaguardar);
				ds_list_destroy(_list);
		
				ini_close();
				audio_play_sound(sound_menu_boton_perfil_aceptar, 50, 0);
			break;
			case "Salir y guardar cambios":
				ini_open(global.editor_nivel_elegido);
				//guardar todos los datos de la oleada en el archivo .ini
				var _list = ds_list_create();
				for (var i = 0; i < array_length(global.editor_oleada_cual); ++i) {
				ds_list_add(_list,global.editor_oleada_cual[i]);
				}
				var _listaguardar = ds_list_write(_list);
				ini_write_string("editor_oleada_cual","oleadas",_listaguardar);
				ds_list_destroy(_list);
		
				//guardar datos generales del nivel en el archivo.ini
				var _list = ds_list_create();
				for (var i = 0; i < array_length(global.editor_nivel_base); ++i) {
				    ds_list_add(_list,global.editor_nivel_base[i]);
				}

				var _listaguardar = ds_list_write(_list);
				ini_write_string("editor_nivel_base","datos",_listaguardar);
				ds_list_destroy(_list);
		
				ini_close();
				instance_create_depth(0,0,-10, obj_transicion);
				audio_play_sound(sound_menu_boton_perfil_aceptar, 50, 0);
				global.destino = menu_editor_general;
				global.destino_sit = 1;
			break;
			case "Salir sin guardar cambios":
				instance_create_depth(0,0,-10, obj_transicion);
				audio_play_sound(sound_menu_boton, 50, 0);
				global.destino = menu_editor_general;
				global.destino_sit = 1;
			break;
		}
	}
}