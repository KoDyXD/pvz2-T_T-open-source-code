/// @description acceder al menu de opciones
if !instance_exists(obj_transicion)
{
	if click == false
	{
		if global.click == false
		{
			audio_play_sound(sound_menu_boton_perfil_opciones,5,0);
			depth = -1;
			global.click = true;
			click = true;
			image_index = 1;
			
			var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
			var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
			
			var i = instance_create_depth(_x,_y-300,-1,editor_boton_jugar_seleccion);
			i.sprite_index = spr_editor_boton;
			i.cual = "Jugar y guardar cambios";
			var i = instance_create_depth(_x,_y-100,-1,editor_boton_jugar_seleccion);
			i.sprite_index = spr_editor_boton_2;
			i.cual = "Guardar cambios";
			var i = instance_create_depth(_x,_y+100,-1,editor_boton_jugar_seleccion);
			i.sprite_index = spr_editor_boton;
			i.cual = "Salir y guardar cambios";
			var i = instance_create_depth(_x,_y+300,-1,editor_boton_jugar_seleccion);
			i.sprite_index = spr_editor_boton_3;
			i.cual = "Salir sin guardar cambios";
		}
	}
	else
	{
		audio_play_sound(sound_menu_boton_perfil_cancelar,5,0);
		depth = 0;
		global.click = false;
		click = false;
		image_index = 0;
		
		instance_destroy(editor_boton_jugar_seleccion);
	}
}