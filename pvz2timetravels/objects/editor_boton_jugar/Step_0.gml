/// @description botones
/*
if click == true
{
	var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
	
	if collision_rectangle(_x-84.5,_y-48.5-300,_x+84.5,_y+48.5-300,obj_click,0,1) and mouse_check_button_pressed(mb_left) and accion = false	//salir del editor sin guardar cambios
	{
		accion = true;
		instance_create_depth(0,0,-10, obj_transicion);
		audio_play_sound(sound_menu_boton, 50, 0);
		global.destino = menu_editor_general;
		global.destino_sit = 1;
	}
	if collision_rectangle(_x-84.5,_y-48.5-200,_x+84.5,_y+48.5-200,obj_click,0,1) and mouse_check_button_pressed(mb_left) and accion = false	//guardar cambios y salir
	{
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
		accion = true;
		instance_create_depth(0,0,-10, obj_transicion);
		audio_play_sound(sound_menu_boton_perfil_aceptar, 50, 0);
		global.destino = menu_editor_general;
		global.destino_sit = 1;
	}
	if collision_rectangle(_x-84.5,_y-48.5-100,_x+84.5,_y+48.5-100,obj_click,0,1) and mouse_check_button_pressed(mb_left) and accion = false	//guardar cambios///////////////////
	{
		//accion = true;
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
	}
	if collision_rectangle(_x-84.5,_y-48.5,_x+84.5,_y+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left) and accion = false	//guardar cambios y jugar nivel/////////
	{
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
		accion = true;
		instance_create_depth(0,0,-10, obj_transicion);
		audio_play_sound(sound_menu_boton_perfil_aceptar, 50, 0);
		global.nivel_cual = nivel_editor_0_1;
		global.destino = nivel_plantilla_0_0;
		global.destino_sit = 5;
	}
}