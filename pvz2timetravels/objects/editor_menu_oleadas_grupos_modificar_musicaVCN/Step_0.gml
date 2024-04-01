/// @description Insert description here
if instance_exists(padre) and alarm[1] = -1
{
	var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;

	if collision_rectangle(_x-84.5,_y+420-48.5,_x+84.5,_y+420+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left) and accion != "eliminar" and modo == "modificar"
	{
		accion = "eliminar";
	}
	if collision_rectangle(_x-84.5-200,_y+420-48.5,_x+84.5-200,_y+420+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left) and accion != "aplicar"
	{
		accion = "aplicar";
	}
	if collision_rectangle(_x-84.5+200,_y+420-48.5,_x+84.5+200,_y+420+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left) and accion != "cancelar"
	{
		accion = "cancelar";
	}
	
	if accion == "aplicar"
	{
		if modo == "modificar"
		{
			for (var i = 0; i < array_length(global.editor_oleada_cual[padre.grupo_datos[array_length(padre.grupo_datos)-1]]); ++i) {
			    global.editor_oleada_cual[padre.grupo_datos[array_length(padre.grupo_datos)-1]][i] = padre.grupo_datos[i];
			}
			padre.padre.alarm[0] = 1;
			instance_destroy();
		}
		if modo == "crear"
		{
			var _tam = array_length(global.editor_oleada_cual);
			for (var i = 0; i < array_length(padre.grupo_datos)-1; ++i) {
			    global.editor_oleada_cual[_tam][i] = padre.grupo_datos[i];
			}
			var _xd = padre.padre;
			instance_destroy(padre);
			instance_destroy(editor_menu_oleadas_boton_grupos_existente);
			instance_destroy(editor_menu_oleadas_boton_grupos_crear);
			instance_destroy(editor_menu_oleadas_boton_grupos_cerrar);
			var _boton = instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-150,"hud",editor_menu_oleadas_boton_grupos_cerrar);
			_boton.padre = _xd;
			_xd.alarm[0] = 1;
			_xd.alarm[1] = 2;
			instance_destroy();
		}
		audio_play_sound(sound_menu_boton_perfil_aceptar,5,0);
	}
	if accion == "cancelar"
	{
		if modo == "modificar"
		{
			padre.grupo_datos = reserva;
			padre.padre.alarm[0] = 1;
			instance_destroy();
		}
		if modo == "crear"
		{
			editor_menu_oleadas_boton_grupos_crear.hijo = noone;
			instance_destroy(padre);
			instance_destroy();
		}
		audio_play_sound(sound_menu_boton_perfil_cancelar,5,0);
	}
	if accion == "eliminar"
	{
		audio_play_sound(sound_menu_boton_perfil_aceptar,5,0);
		array_delete(global.editor_oleada_cual,padre.grupo_datos[array_length(padre.grupo_datos)-1],1);
		var _xd = padre.padre;
		instance_destroy(padre);
		instance_destroy(editor_menu_oleadas_boton_grupos_existente);
		instance_destroy(editor_menu_oleadas_boton_grupos_crear);
		instance_destroy(editor_menu_oleadas_boton_grupos_cerrar);
		var _boton = instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])-150,"hud",editor_menu_oleadas_boton_grupos_cerrar);
		_boton.padre = _xd;
		_xd.alarm[0] = 1;
		_xd.alarm[1] = 2;
		instance_destroy();
	}
	
	if accion != "aplicar" and accion != "cancelar"
	{	
		if collision_rectangle(_x-125-84.5,_y-225-48.5,_x-125+84.5,_y-225+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left) and cual != "punk"
		{
			audio_play_sound(sound_menu_boton_perfil,5,0);
			cual = "punk";
			padre.grupo_datos[2] = "punk";
		}
		if collision_rectangle(_x+125-84.5,_y-225-48.5,_x+125+84.5,_y-225+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left) and cual != "pop"
		{
			audio_play_sound(sound_menu_boton_perfil,5,0);
			cual = "pop";
			padre.grupo_datos[2] = "pop";
		}
		if collision_rectangle(_x-125-84.5,_y-75-48.5,_x-125+84.5,_y-75+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left) and cual != "rap"
		{
			audio_play_sound(sound_menu_boton_perfil,5,0);
			cual = "rap";
			padre.grupo_datos[2] = "rap";
		}
		if collision_rectangle(_x+125-84.5,_y-75-48.5,_x+125+84.5,_y-75+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left) and cual != "8-bit"
		{
			audio_play_sound(sound_menu_boton_perfil,5,0);
			cual = "8-bit";
			padre.grupo_datos[2] = "8-bit";
		}
		if collision_rectangle(_x-125-84.5,_y+75-48.5,_x-125+84.5,_y+75+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left) and cual != "balada"
		{
			audio_play_sound(sound_menu_boton_perfil,5,0);
			cual = "balada";
			padre.grupo_datos[2] = "balada";
		}
		if collision_rectangle(_x+125-84.5,_y+75-48.5,_x+125+84.5,_y+75+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left) and cual != "metal"
		{
			audio_play_sound(sound_menu_boton_perfil,5,0);
			cual = "metal";
			padre.grupo_datos[2] = "metal";
		}
		if collision_rectangle(_x-84.5,_y+225-48.5,_x+84.5,_y+225+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left) and cual != "semillas"
		{
			audio_play_sound(sound_menu_boton_perfil,5,0);
			cual = "semillas";
			padre.grupo_datos[2] = "semillas";
		}

	}
}