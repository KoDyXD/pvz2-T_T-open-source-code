/// @description OLEADAS
#region//intro
if intro = true
{
	if audio_is_playing(music_selva_special_2) and audio_sound_get_track_position(duracion) > 181.09
	{
		duracion = audio_play_sound(music_selva_special_2,1000,0);
	}
	if !audio_is_playing(duracion) {duracion = audio_play_sound(music_selva_special_2,1000,0);}
}
#endregion
#region//oleada2
if oleada_2 = true and control = true
{
	instance_destroy(nivel_horda); instance_create_depth(0,0,0,nivel_horda);
	control = false;
	cual2 = 3;
}
#endregion
#region//oleada3
if oleada_3 = true and control = true
{
	instance_destroy(nivel_horda); instance_create_depth(0,0,0,nivel_horda);
	control = false;
	cual2 = 2;
}
#endregion
#region//oleada4
if oleada_4 = true and control = true
{
	instance_destroy(nivel_horda); var i = instance_create_depth(0,0,0,nivel_horda); i.masiva = true;
	control = false;
	cual2 = 2;
}
#endregion