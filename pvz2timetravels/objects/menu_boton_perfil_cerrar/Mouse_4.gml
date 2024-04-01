/// @description cerrar perfiles
if click2 = false
{
	menu_boton_perfil.click = false;
	menu_boton_iniciar_salir.click2 = false;
	menu_boton_noticias.click2 = false;
	menu_boton_creditos.click2 = false;
	if instance_exists(menu_boton_graficos_pantalla_completa) {menu_boton_graficos_pantalla_completa.click2 = false;}
	instance_destroy(menu_boton_perfil_cambiar);
	instance_destroy(menu_boton_perfil_renombrar);
	instance_destroy(menu_boton_perfil_eliminar);
	instance_destroy(menu_boton_perfil_crear);
	instance_destroy();
	audio_play_sound(sound_menu_boton_perfil_aceptar,5,0);
}