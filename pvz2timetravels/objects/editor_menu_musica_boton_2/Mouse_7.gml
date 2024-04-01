/// @description musica del patio
if agrandar == true and alarm[1] == -1 and !instance_exists(editor_menu_musica_boton_3) and click == false
{
	audio_play_sound(sound_menu_boton_perfil,5,0);
	global.click = true;
	click = true;
	var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
	
			switch(editor_musica)
			{
				case musica_patiofrontal:
					var i = instance_create_depth(_x,_y-150,depth,editor_menu_musica_boton_3);
					i.cual = "musica_patiofrontal";
					var i = instance_create_depth(_x,_y,depth,editor_menu_musica_boton_3);
					i.cual = "musica_patiofrontal_clasico";
					var i = instance_create_depth(_x,_y+150,depth,editor_menu_musica_boton_3);
					i.cual = "musica_patiofrontal_UB";
				break;
				case musica_egipto:
					var i = instance_create_depth(_x,_y-150,depth,editor_menu_musica_boton_3);
					i.cual = "musica_egipto";
					var i = instance_create_depth(_x,_y,depth,editor_menu_musica_boton_3);
					i.cual = "musica_egipto_special_1";
					var i = instance_create_depth(_x,_y+150,depth,editor_menu_musica_boton_3);
					i.cual = "musica_egipto_special_2";
				break;
				case musica_pirata:
					var i = instance_create_depth(_x,_y-150,depth,editor_menu_musica_boton_3);
					i.cual = "musica_pirata";
					var i = instance_create_depth(_x,_y,depth,editor_menu_musica_boton_3);
					i.cual = "musica_pirata_special_1";
					var i = instance_create_depth(_x,_y+150,depth,editor_menu_musica_boton_3);
					i.cual = "musica_pirata_special_2";
				break;
				case musica_vaquero:
					var i = instance_create_depth(_x,_y-150,depth,editor_menu_musica_boton_3);
					i.cual = "musica_vaquero";
					var i = instance_create_depth(_x,_y,depth,editor_menu_musica_boton_3);
					i.cual = "musica_vaquero_special_1";
					var i = instance_create_depth(_x,_y+150,depth,editor_menu_musica_boton_3);
					i.cual = "musica_vaquero_special_2";
				break;
				case musica_cuevas:
					var i = instance_create_depth(_x,_y-150,depth,editor_menu_musica_boton_3);
					i.cual = "musica_cuevas";
					var i = instance_create_depth(_x,_y,depth,editor_menu_musica_boton_3);
					i.cual = "musica_cuevas_special_1";
					var i = instance_create_depth(_x,_y+150,depth,editor_menu_musica_boton_3);
					i.cual = "musica_cuevas_special_2";
				break;
				case musica_medieval:
					var i = instance_create_depth(_x,_y-150,depth,editor_menu_musica_boton_3);
					i.cual = "musica_medieval";
					var i = instance_create_depth(_x,_y,depth,editor_menu_musica_boton_3);
					i.cual = "musica_medieval_special_1";
					var i = instance_create_depth(_x,_y+150,depth,editor_menu_musica_boton_3);
					i.cual = "musica_medieval_special_2";
				break;
				case musica_selva:
					var i = instance_create_depth(_x,_y-150,depth,editor_menu_musica_boton_3);
					i.cual = "musica_selva";
					var i = instance_create_depth(_x,_y,depth,editor_menu_musica_boton_3);
					i.cual = "musica_selva_special_1";
					var i = instance_create_depth(_x,_y+150,depth,editor_menu_musica_boton_3);
					i.cual = "musica_selva_special_2";
				break;
				case musica_jurasico:
					var i = instance_create_depth(_x,_y-150,depth,editor_menu_musica_boton_3);
					i.cual = "musica_jurasico";
					var i = instance_create_depth(_x,_y,depth,editor_menu_musica_boton_3);
					i.cual = "musica_jurasico_special_1";
					var i = instance_create_depth(_x,_y+150,depth,editor_menu_musica_boton_3);
					i.cual = "musica_jurasico_special_2";
				break;
				case musica_playa:
					var i = instance_create_depth(_x,_y-75,depth,editor_menu_musica_boton_3);
					i.cual = "musica_playa";
					var i = instance_create_depth(_x,_y+75,depth,editor_menu_musica_boton_3);
					i.cual = "musica_playa_special_2";
				break;
				case musica_futuro:
					var i = instance_create_depth(_x,_y-150,depth,editor_menu_musica_boton_3);
					i.cual = "musica_futuro";
					var i = instance_create_depth(_x,_y,depth,editor_menu_musica_boton_3);
					i.cual = "musica_futuro_special_1";
					var i = instance_create_depth(_x,_y+150,depth,editor_menu_musica_boton_3);
					i.cual = "musica_futuro_special_2";
				break;
				case musica_moderno:
					var i = instance_create_depth(_x,_y-150,depth,editor_menu_musica_boton_3);
					i.cual = "musica_moderno";
					var i = instance_create_depth(_x,_y,depth,editor_menu_musica_boton_3);
					i.cual = "musica_moderno_special_1";
					var i = instance_create_depth(_x,_y+150,depth,editor_menu_musica_boton_3);
					i.cual = "musica_moderno_special_2";
				break;
				case musica_neon:
					var i = instance_create_depth(_x,_y,depth,editor_menu_musica_boton_3);
					i.cual = "musica_neon";
				break;
			}
	
	var _cant = instance_number(editor_menu_musica_boton_3);
	cantidad = _cant;
	
	if _cant = 1 {_cant = _y+147;}
	if _cant = 2 {_cant = _y+77*2+85;}
	if _cant = 3 {_cant = _y+77*3+100;}
	
	inst = instance_create_depth(_x,_cant,-3,editor_menu_musica_boton_cerrar);
	inst.inst = id;
}