/// @description MUSICA
if ext = true
{
	if audio_is_playing(duracion)
	{
		if audio_sound_get_track_position(duracion) > 30.5
		{
			duracion = audio_play_sound(music_menu_recom,1000,0);
		}
	}
	else
	{
		duracion = audio_play_sound(music_menu_recom,1000,0);
	}
}
if instance_exists(menu_recom_regresar) {if menu_recom_regresar.click = false {audio_sound_gain(duracion,0,500);}}
if instance_exists(menu_recom_siguiente) {if menu_recom_siguiente.click = false {audio_sound_gain(duracion,0,500);}}