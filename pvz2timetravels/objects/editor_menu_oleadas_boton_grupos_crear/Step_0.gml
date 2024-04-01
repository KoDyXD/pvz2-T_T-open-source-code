/// @description Insert description here
#region agrandar icono
if place_meeting(x,y,obj_click) and !place_meeting(x,y,editor_menu_oleadas_boton_grupos_existente) and !instance_exists(editor_menu_oleadas_grupos_debug)// and menu == false
{
	agrandar = true;
}
else if !place_meeting(x,y,obj_click) and hijo = noone// and menu == false
{
	agrandar = false;
}

if agrandar == true
{
	if image_xscale < 1.5
	{
		depth = -5;
		image_yscale += 0.1;
		image_xscale += 0.1;
	}
}
else if image_xscale > 1 and !instance_exists(editor_menu_oleadas_grupos_debug)
{
	depth = -4;
	image_yscale -= 0.1;
	image_xscale -= 0.1;
}
#endregion
if menu == true and alarm[0] = -1
{
	var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
	
	if collision_rectangle(_x-84.5,_y-300-48.5,_x+84.5,_y-300+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left)
	{
		//generador de zombis
		audio_play_sound(sound_menu_boton_perfil_opciones,5,0);
		instance_destroy(hijo_debug);
		hijo_debug = noone;
		menu = false;
		hijo = instance_create_depth(0,0,depth,editor_menu_oleadas_boton_grupos_existente);
		hijo.cual = cual;
		with(hijo)
		{
			cual = other.cual;
			padre = other.padre;
			grupo_datos = [cual,"zombi","0","0","zombi_tut_basico","1","1",array_length(global.editor_oleada_cual)];
			var _inst = instance_create_depth(x,y,depth,editor_menu_oleadas_grupos_modificar_zombis);
			_inst.padre = id;
			_inst.modo = "crear";
		}
	}
	if collision_rectangle(_x-84.5,_y-150-48.5,_x+84.5,_y-150+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left)
	{
		//generador de planta
		audio_play_sound(sound_menu_boton_perfil_opciones,5,0);
		instance_destroy(hijo_debug);
		hijo_debug = noone;
		menu = false;
		hijo = instance_create_depth(0,0,depth,editor_menu_oleadas_boton_grupos_existente);
		hijo.cual = cual;
		with(hijo)
		{
			cual = other.cual;
			padre = other.padre;
			grupo_datos = [cual,"planta","1","1","planta_lanzaguisantes",array_length(global.editor_oleada_cual)];
			var _inst = instance_create_depth(x,y,depth,editor_menu_oleadas_grupos_modificar_planta);
			_inst.padre = id;
			_inst.modo = "crear";
		}
	}
	if collision_rectangle(_x-84.5,_y-48.5,_x+84.5,_y+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left)
	{
		//generador de una tumba
		audio_play_sound(sound_menu_boton_perfil_opciones,5,0);
		instance_destroy(hijo_debug);
		hijo_debug = noone;
		menu = false;
		hijo = instance_create_depth(0,0,depth,editor_menu_oleadas_boton_grupos_existente);
		hijo.cual = cual;
		with(hijo)
		{
			cual = other.cual;
			padre = other.padre;
			grupo_datos = [cual,"tumba","1","1","tumba_egipto",array_length(global.editor_oleada_cual)];
			var _inst = instance_create_depth(x,y,depth,editor_menu_oleadas_grupos_modificar_tumba);
			_inst.padre = id;
			_inst.modo = "crear";
		}
	}
	if collision_rectangle(_x-84.5,_y+150-48.5,_x+84.5,_y+150+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left)
	{
		//generador de varias tumbas
		audio_play_sound(sound_menu_boton_perfil_opciones,5,0);
		instance_destroy(hijo_debug);
		hijo_debug = noone;
		menu = false;
		hijo = instance_create_depth(0,0,depth,editor_menu_oleadas_boton_grupos_existente);
		hijo.cual = cual;
		with(hijo)
		{
			cual = other.cual;
			padre = other.padre;
			grupo_datos = [cual,"tumbas","1","1","1","1","1","1","tumba_egipto",array_length(global.editor_oleada_cual)];
			var _inst = instance_create_depth(x,y,depth,editor_menu_oleadas_grupos_modificar_tumbas);
			_inst.padre = id;
			_inst.modo = "crear";
		}
	}
	if collision_rectangle(_x-84.5,_y+300-48.5,_x+84.5,_y+300+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left)
	{
		if global.editor_nivel_base[1] == "musica_neon"
		{
			//musica de vueltacasete de neon
			audio_play_sound(sound_menu_boton_perfil_opciones,5,0);
			instance_destroy(hijo_debug);
			hijo_debug = noone;
			menu = false;
			hijo = instance_create_depth(0,0,depth,editor_menu_oleadas_boton_grupos_existente);
			hijo.cual = cual;
			with(hijo)
			{
				cual = other.cual;
				padre = other.padre;
				grupo_datos = [cual,"VCN","semillas",array_length(global.editor_oleada_cual)];
				var _inst = instance_create_depth(x,y,depth,editor_menu_oleadas_grupos_modificar_musicaVCN);
				_inst.padre = id;
				_inst.modo = "crear";
			}
		}
		else
		{
			audio_play_sound(sound_menu_boton_perfil_negar,5,0);
		}
	}
	if collision_rectangle(_x-84.5,_y+420-48.5,_x+84.5,_y+420+48.5,obj_click,0,1) and mouse_check_button_pressed(mb_left)
	{
		//cerrar menu
		audio_play_sound(sound_menu_boton_perfil_cancelar,5,0);
		instance_destroy(hijo_debug);
		hijo_debug = noone;
		menu = false;
	}
}