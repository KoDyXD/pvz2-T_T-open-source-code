/// @description eliminar perfil
if click2 = false
{
	image_index = 1;
	menu_boton_perfil.click2 = true;
	menu_boton_perfil_cambiar.click2 = true;
	menu_boton_perfil_renombrar.click2 = true;
	menu_boton_perfil_eliminar.click2 = true;
	menu_boton_perfil_cerrar.click2 = true;
	if instance_exists(menu_boton_perfil_crear) {menu_boton_perfil_crear.click2 = true;}
	var i = instance_create_depth(room_width/2-140,865,0,menu_boton_perfil_eliminar_aceptar);
	i.cual = cual;
	instance_create_depth(room_width/2+140,865,0,menu_boton_perfil_eliminar_cancelar);
	audio_play_sound(sound_menu_boton_perfil_opciones,5,0);
}