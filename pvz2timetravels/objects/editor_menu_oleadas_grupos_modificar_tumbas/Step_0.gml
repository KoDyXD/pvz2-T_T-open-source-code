/// @description Insert description here
if instance_exists(padre) and alarm[1] = -1
{
	var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;

	if collision_rectangle(_x-84.5,_y+560-48.5,_x+84.5,_y+560+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left) and accion != "eliminar" and modo == "modificar"
	{
		accion = "eliminar";
	}
	if collision_rectangle(_x-84.5-200,_y+560-48.5,_x+84.5-200,_y+560+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left) and accion != "aplicar"
	{
		accion = "aplicar";
	}
	if collision_rectangle(_x-84.5+200,_y+560-48.5,_x+84.5+200,_y+560+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left) and accion != "cancelar"
	{
		accion = "cancelar";
	}
	
	if accion == "aplicar"
	{
		if padre.grupo_datos[2] != "" and padre.grupo_datos[2] != "-" and padre.grupo_datos[3] != "" and padre.grupo_datos[3] != "-" and padre.grupo_datos[4] != "" and padre.grupo_datos[4] != "-" and padre.grupo_datos[5] != "" and padre.grupo_datos[5] != "-" and padre.grupo_datos[6] != "" and padre.grupo_datos[6] != "-" and padre.grupo_datos[7] != "" and padre.grupo_datos[7] != "-"
		{
			if (real(padre.grupo_datos[2]) <= real(padre.grupo_datos[4])) and (real(padre.grupo_datos[3]) <= real(padre.grupo_datos[5])) and (real(padre.grupo_datos[7]) >= real(padre.grupo_datos[6]))
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
		if collision_rectangle(_x+61,_y-375-40,_x+221,_y-375+40,obj_click,0,1) and mouse_check_button_pressed(mb_left) and cual != "x1"
		{
			audio_play_sound(sound_menu_boton_perfil,5,0);
			cual = "x1";
			array_valor = 2;
		}
		if collision_rectangle(_x+61,_y-225-40,_x+221,_y-225+40,obj_click,0,1) and mouse_check_button_pressed(mb_left) and cual != "y1"
		{
			audio_play_sound(sound_menu_boton_perfil,5,0);
			cual = "y1";
			array_valor = 3;
		}
		if collision_rectangle(_x+61,_y-75-40,_x+221,_y-75+40,obj_click,0,1) and mouse_check_button_pressed(mb_left) and cual != "x2"
		{
			audio_play_sound(sound_menu_boton_perfil,5,0);
			cual = "x2";
			array_valor = 4;
		}
		if collision_rectangle(_x+61,_y+75-40,_x+221,_y+75+40,obj_click,0,1) and mouse_check_button_pressed(mb_left) and cual != "y2"
		{
			audio_play_sound(sound_menu_boton_perfil,5,0);
			cual = "y2";
			array_valor = 5;
		}
		/*if collision_rectangle(_x+61,_y+110,_x+221,_y+190,obj_click,0,1) and mouse_check_button_pressed(mb_left) and cual != "c_min"
		{
			audio_play_sound(sound_menu_boton_perfil,5,0);
			cual = "c_min";
			array_valor = 6;
		}*/
		if collision_rectangle(_x+61,_y+225-40,_x+221,_y+225+40,obj_click,0,1) and mouse_check_button_pressed(mb_left) and cual != "c_max"
		{
			audio_play_sound(sound_menu_boton_perfil,5,0);
			cual = "c_max";
			array_valor = 7;
		}
		if collision_rectangle(_x+61,_y+375-40,_x+221,_y+375+40,obj_click,0,1) and mouse_check_button_pressed(mb_left) and cual != "zombi"
		{
			audio_play_sound(sound_menu_boton_perfil,5,0);
			cual = "zombi";
			array_valor = 8;
		}

		if cual == "zombi"
		{
			if !instance_exists(editor_menu_oleadas_selector_tumba)
			{
				var xx = -1;
				var yy = 0;
				var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-535;
				var _y = camera_get_view_y(view_camera[0])+100;
				for (var i = 1; i < array_length(zombi); ++i) {
					if xx >= 2 {xx = -1; yy += 1;}
					xx += 1;
				    var ii = instance_create_layer(_x+200*xx,_y+126*yy,"hud",editor_menu_oleadas_selector_tumba);
					ii.cual = zombi[i];
					ii.padre = id;
				}
			}
		}
		else if instance_exists(editor_menu_oleadas_selector_tumba)
		{
			instance_destroy(editor_menu_oleadas_selector_tumba);
		}
	}
	
	//ajusadores de valores
	if padre.grupo_datos[array_valor] == "00" {padre.grupo_datos[array_valor] = "0";}
	
	//ajustar los valores de la generacion de tumbas
	if padre.grupo_datos[2] != "" and padre.grupo_datos[2] != "-"
	{
		//ajustar los valores de X1
		if real(padre.grupo_datos[2]) < 1 {padre.grupo_datos[2] = "1";}
		if real(padre.grupo_datos[2]) > 9 {padre.grupo_datos[2] = "9";}
	}
	if padre.grupo_datos[3] != "" and padre.grupo_datos[3] != "-"
	{
		//ajustar los valores de Y1
		if real(padre.grupo_datos[3]) < 1 {padre.grupo_datos[3] = "1";}
		if real(padre.grupo_datos[3]) > 5 {padre.grupo_datos[3] = "5";}
	}
	if padre.grupo_datos[4] != "" and padre.grupo_datos[4] != "-"
	{
		//ajustar los valores de X2
		if real(padre.grupo_datos[4]) < 1 {padre.grupo_datos[4] = "1";}
		if real(padre.grupo_datos[4]) > 9 {padre.grupo_datos[4] = "9";}
	}
	if padre.grupo_datos[5] != "" and padre.grupo_datos[5] != "-"
	{
		//ajustar los valores de Y2
		if real(padre.grupo_datos[5]) < 1 {padre.grupo_datos[5] = "1";}
		if real(padre.grupo_datos[5]) > 5 {padre.grupo_datos[5] = "5";}
	}
	if padre.grupo_datos[6] != "" and padre.grupo_datos[6] != "-"
	{
		//ajustar para que la cantidad minima a generar no sea negativa ni exceda el maximo permitido en el patio
		if real(padre.grupo_datos[6]) <= 0 {padre.grupo_datos[6] = "1";}
		if real(padre.grupo_datos[6]) > 45 {padre.grupo_datos[6] = "45";}
	}
	if padre.grupo_datos[7] != "" and padre.grupo_datos[7] != "-"
	{
		if padre.grupo_datos[6] != padre.grupo_datos[7] {padre.grupo_datos[6] = padre.grupo_datos[7];}	//hacer que el c_min sea igual al c_max
		//ajustar para que la cantidad maxima a generar no sea negativa ni exceda el maximo permitido en el patio
		if real(padre.grupo_datos[7]) <= 0 {padre.grupo_datos[7] = "1";}
		if real(padre.grupo_datos[7]) > 45 {padre.grupo_datos[7] = "45";}
	}
}