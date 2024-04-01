/// @description pausar o reanudar partida
if click2 = false and !instance_place(x,y,guia_debug) and !instance_exists(obj_transicion)
{
	if click = false
	{
		click = true;
		image_index = 1;
		instance_deactivate_all(true);
		scr_activar_objetivos();
		instance_activate_object(pat_decos);
		instance_activate_object(pat_decos_extras);
		instance_activate_object(obj_control_niveles_extras);
		instance_activate_object(casillas_no_pasarela);
		instance_activate_object(casillas_pasarelas);
		
		var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
		var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
	
		//botones de acciones del menu pausa
		var i = instance_create_depth(_x-370,_y+295,0,menu_regresar);
		i.image_xscale = 1.4;
		i.image_yscale = 1.25;
		instance_create_depth(_x,_y+295,0,menu_reiniciar);
		instance_create_depth(_x+370,_y+295,0,menu_reanudar);
		if editor = true {instance_create_depth(_x,_y+475,0,menu_editor);}	//crear boton para ir al modo editor
		//boton de objetivos si el nivel los posee
		if instance_exists(objetivo_cuales)
		{
			instance_create_depth(_x,_y+130,0,menu_boton_objetivos_cuales);
		}
		//botones del volumen
		instance_create_depth(_x+452,_y-125,0,menu_boton_vol_musica);
		instance_create_depth(_x+452,_y-5,0,menu_boton_vol_efectos);
		if os_type = os_windows {instance_create_depth(x,y+169,0,menu_boton_graficos_pantalla_completa);}
		audio_pause_all();
		audio_play_sound(sound_menu_boton_pausa,100,0);
	}
	else
	{
		global.reanudar = true;
	}
}