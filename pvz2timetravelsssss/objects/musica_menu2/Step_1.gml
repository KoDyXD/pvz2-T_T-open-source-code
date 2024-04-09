/// @description MUSICA
if !audio_group_is_loaded(grupo_ambiente_all)
{
	audio_group_load(grupo_ambiente_all);
}

if audio_is_playing(duracion)
{
	if audio_sound_get_track_position(duracion) > 120
	{
		duracion = audio_play_sound(music_menu_2,1000,0);
	}
}

if !audio_is_playing(duracion2)
{
	duracion2 = audio_play_sound(ambiente_menu,1000,1);
	audio_sound_gain(duracion2,0,0);
	audio_sound_gain(duracion2,0.5,3000);
	//audio_sound_gain(duracion,0,0);
	//audio_sound_gain(duracion,1,3000);
}