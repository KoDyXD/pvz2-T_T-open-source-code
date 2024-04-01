/// @description Insert description here
if instance_exists(padre) and alarm[1] = -1
{
	var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;

	if collision_rectangle(_x-84.5,_y+285-48.5,_x+84.5,_y+285+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left) and accion != "eliminar" and modo == "modificar"
	{
		accion = "eliminar";
	}
	if collision_rectangle(_x-84.5-200,_y+285-48.5,_x+84.5-200,_y+285+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left) and accion != "aplicar"
	{
		accion = "aplicar";
	}
	if collision_rectangle(_x-84.5+200,_y+285-48.5,_x+84.5+200,_y+285+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left) and accion != "cancelar"
	{
		accion = "cancelar";
	}
	
	if accion == "aplicar"
	{
		if padre.grupo_datos[2] != "" and padre.grupo_datos[2] != "-" and padre.grupo_datos[3] != "" and padre.grupo_datos[3] != "-"
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
		else
		{
			accion = "xd";
			audio_play_sound(sound_menu_boton_perfil_negar,5,0);
		}
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
		if collision_rectangle(_x+61,_y-190,_x+221,_y-110,obj_click,0,1) and mouse_check_button_pressed(mb_left) and cual != "x"
		{
			audio_play_sound(sound_menu_boton_perfil,5,0);
			cual = "x";
			array_valor = 2;
		}
		if collision_rectangle(_x+61,_y-40,_x+221,_y+40,obj_click,0,1) and mouse_check_button_pressed(mb_left) and cual != "y"
		{
			audio_play_sound(sound_menu_boton_perfil,5,0);
			cual = "y";
			array_valor = 3;
		}
		if collision_rectangle(_x+61,_y+110,_x+221,_y+190,obj_click,0,1) and mouse_check_button_pressed(mb_left) and cual != "zombi"
		{
			audio_play_sound(sound_menu_boton_perfil,5,0);
			cual = "zombi";
			array_valor = 4;
		}

		if cual == "zombi"
		{
			if !instance_exists(editor_menu_oleadas_selector_planta)
			{
				var xx = -1;
				var yy = 0;
				var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-535;
				var _y = camera_get_view_y(view_camera[0])+100;
				for (var i = 1; i < array_length(zombi); ++i) {
					if xx >= 2 {xx = -1; yy += 1;}
					xx += 1;
				    var ii = instance_create_layer(_x+200*xx,_y+126*yy,"hud",editor_menu_oleadas_selector_planta);
					ii.cual = zombi[i];
					ii.padre = id;
				}
			}
		}
		else if instance_exists(editor_menu_oleadas_selector_planta)
		{
			instance_destroy(editor_menu_oleadas_selector_planta);
		}
	}
	
	//ajusadores de valores
	if padre.grupo_datos[array_valor] == "00" {padre.grupo_datos[array_valor] = "0";}
	
	//ajustar los valores de la generacion de la tumba
	if padre.grupo_datos[2] != "" and padre.grupo_datos[2] != "-"
	{
		//ajustar los valores de X
		if real(padre.grupo_datos[2]) > 9 {padre.grupo_datos[2] = "9";}
	}
	if padre.grupo_datos[3] != "" and padre.grupo_datos[3] != "-"
	{
		//ajustar los valores de Y
		if real(padre.grupo_datos[3]) > 5 {padre.grupo_datos[3] = "5";}
	}
}