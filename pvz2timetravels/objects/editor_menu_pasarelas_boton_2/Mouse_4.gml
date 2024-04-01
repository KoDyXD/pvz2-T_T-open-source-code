/// @description
if instance_exists(editor_menu_pasarelas_boton_1)
{
	if editor_menu_pasarelas_boton_1.editor_pasarelas[pasarela-1] == 0
	{
		editor_menu_pasarelas_boton_1.editor_pasarelas[pasarela-1] = 1
	}
	else
	{
		editor_menu_pasarelas_boton_1.editor_pasarelas[pasarela-1] = 0
	}
	audio_play_sound(sound_menu_boton_perfil_aceptar,5,0);
}