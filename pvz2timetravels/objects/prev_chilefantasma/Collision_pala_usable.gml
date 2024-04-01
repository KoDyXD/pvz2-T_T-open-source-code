/// @description desplantar
if mouse_check_button(mb_left)
{
	audio_play_sound(sound_pala_desplantar,1,0);
	instance_destroy();	
}