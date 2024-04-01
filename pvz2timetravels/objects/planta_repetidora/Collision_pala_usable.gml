/// @description desplantar
if mouse_check_button(mb_left)
{
	audio_play_sound(sound_pala_desplantar,1,0);
	global.pala = true;
	instance_destroy();
}

if mouse_check_button(mb_middle)
{
	audio_play_sound(sound_pala_desplantar,1,0);
	global.pala = true;
	instance_destroy();
}
brillo = 0.13;