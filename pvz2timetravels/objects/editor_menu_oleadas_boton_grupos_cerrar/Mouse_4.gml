/// @description cerrar menu de los grupos
if !instance_exists(editor_menu_oleadas_grupos_debug)
{
	audio_play_sound(sound_menu_boton_perfil_cancelar,5,0);
	padre.click = false;
	instance_destroy(editor_menu_oleadas_boton_grupos_existente);
	instance_destroy(editor_menu_oleadas_boton_grupos_crear);
	instance_destroy();
}