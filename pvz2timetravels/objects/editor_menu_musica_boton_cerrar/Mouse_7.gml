/// @description Insert description here
if alarm[0] == -1
{
	audio_play_sound(sound_menu_boton_perfil_cancelar,5,0);
	with(inst)
	{
		click = false;	//cerrar menu
		instance_destroy(editor_menu_musica_boton_3);
		inst = noone;
		alarm_set(1,2);
	}
	instance_destroy();
}