/// @description abrir o cerrar menu de perfiles
if click2 = false and !instance_exists(obj_transicion) and !instance_exists(obj_transicion_inicio)
{
	if click = false
	{
		click = true;
		if instance_exists(menu_boton_graficos_pantalla_completa) {menu_boton_graficos_pantalla_completa.click2 = true;}
		menu_boton_creditos.click2 = true;
		menu_boton_iniciar_salir.click2 = true;
		menu_boton_noticias.click2 = true;
		scr_perfiles(global.usuarios[0],global.usuarios[1],global.usuarios[2],global.usuarios[3]);
		audio_play_sound(sound_menu_boton_perfil,5,0);
		instance_create_depth(room_width/2,1178,depth,menu_boton_perfil_cerrar);
	}
}