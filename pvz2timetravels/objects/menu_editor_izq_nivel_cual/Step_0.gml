/// @description Insert description here
if instance_exists(menu_editor_izq_nivel_mover)
{
	y = menu_editor_izq_nivel_mover.y+ystart;
}

if global.editor_nivel_elegido == cual and !instance_exists(obj_transicion)
{
	var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
	
	if collision_rectangle((room_width/2)+200,290,(room_width/2)+1280,470,obj_click,0,1) and mouse_check_button_released(mb_left) and !instance_exists(obj_transicion) and !instance_exists(menu_editor_der_nombre)	//cambiar nombre del nivel
	{
		audio_play_sound(sound_menu_boton_perfil_aceptar, 50, 0);
		var i = instance_create_depth(0,0,0,menu_editor_der_nombre);
		i.padre = id;
	}
	if collision_rectangle(_x+175.25,_y+571,_x+512.75,_y+769,obj_click,0,1) and mouse_check_button_released(mb_left) and !instance_exists(obj_transicion)	//entrar al modo editor
	{
		global.editor_oleada_cual =	//reiniciar la array para evitar bugs
		[
			[0,"zombi",0,0,"nulo",1,1],
		];

		global.editor_oleada_cual = oleada_cual;	//asignarle los datos de las oleadas a la array de las oleadas
		global.editor_nivel_base = nivel_base;		//asignarles los datos generales del nivel a la array general
		
		instance_create_depth(0,0,-10, obj_transicion);
		audio_play_sound(sound_menu_boton, 50, 0);
		global.destino = nivel_plantilla_0_1;	//ir a la room del modo editor
		global.destino_sit = 5;
		global.nivel_cual = nivel_base;
	}
	if collision_rectangle(_x+575.25,_y+571,_x+912.75,_y+769,obj_click,0,1) and mouse_check_button_released(mb_left) and !instance_exists(obj_transicion)	//jugar el nivel
	{
		global.editor_oleada_cual =	//reiniciar la array para evitar bugs
		[
			[0,"zombi",0,0,"nulo",1,1],
		];

		global.editor_oleada_cual = oleada_cual;	//asignarle los datos de las oleadas a la array de las oleadas
		global.editor_nivel_base = nivel_base;		//asignarles los datos generales del nivel a la array general
		
		instance_create_depth(0,0,-10, obj_transicion);
		audio_play_sound(sound_menu_boton_perfil_aceptar, 50, 0);
		global.nivel_cual = nivel_editor_0_1;
		global.destino = nivel_plantilla_0_0;
		global.destino_sit = 5;
	}
	if collision_rectangle(_x+975.25,_y+571,_x+1312.75,_y+769,obj_click,0,1) and mouse_check_button_released(mb_left) and !instance_exists(obj_transicion)	//eliminar nivel
	{
		audio_play_sound(sound_menu_boton_perfil_aceptar, 50, 0);
		
		file_delete(cual);
		ini_open("general.ini");
		for (var i = 1; i <= global.editor_nivel_cant_tamano; ++i) {
		    ini_key_delete("Editor","lvleditor "+string(i));	//borrar todos los niveles guardados en el archivo genreal.ini
		}
		
		for (var i = 0; i <= global.editor_nivel_cant_tamano; ++i) {
		    if cual == global.editor_nivel_cantidad[i]
			{
				array_delete(global.editor_nivel_cantidad,i,1);	//borrar el nivel de la array de niveles
				global.editor_nivel_cant_tamano -= 1;	//menorar la cantidad de niveles creados
				break;
			}
		}
		
		ini_write_real("Editor","lvl cantidad",global.editor_nivel_cant_tamano);
		for (var i = 1; i <= global.editor_nivel_cant_tamano; ++i) {
			ini_write_string("Editor","lvleditor "+string(i),string(global.editor_nivel_cantidad[i]));	//reescribir todos los niveles creados en el archivo general.ini
		}
		ini_close();
		menu_editor_hud_general.alarm[0] = 1	//activar la alarma que creara de nuevo los botones de niveles
	}
}