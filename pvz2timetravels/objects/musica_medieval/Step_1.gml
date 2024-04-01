/// @description OLEADAS
#region//intro
if intro = true
{
	if audio_is_playing(music_medieval_semillas_intro)
	{
		if audio_sound_get_track_position(duracion) > 5.01
		{
			duracion = audio_play_sound(music_medieval_semillas_loop,1000,0);
		}
	}
	if audio_is_playing(music_medieval_semillas_loop)
	{
		if audio_sound_get_track_position(duracion) > 15.43 {cual = 0;duracion = audio_play_sound(music_medieval_semillas_loop,1000,0);}
	}
	if !audio_is_playing(duracion) {duracion = audio_play_sound(music_medieval_semillas_intro,1000,0);}
}
#endregion
#region//oleada1
if oleada_1 = true and !instance_exists(camara) and !instance_exists(nivel_ready_set_plant) and global.quietos = false
{
	if intro = true {intro = false; cual = 0;}
	if audio_is_playing(music_medieval_semillas_intro) and audio_sound_get_track_position(duracion) > 4.6
	{
		duracion = audio_play_sound(music_vaquero_oleada_1,1000,0);
	}
	if audio_is_playing(music_medieval_semillas_loop) and audio_sound_get_track_position(duracion) > 15.05
	{
		duracion = audio_play_sound(music_medieval_oleada_1,1000,0);
	}
	if audio_is_playing(music_medieval_oleada_1) and audio_sound_get_track_position(duracion) > 59.96
	{
		duracion = audio_play_sound(music_medieval_oleada_1,1000,0);
	}
	if !audio_is_playing(duracion) {duracion = audio_play_sound(music_medieval_oleada_1,1000,0);}
}
#endregion
#region//oleada2
if oleada_2 = true
{
	if control = true
	{
		instance_destroy(nivel_horda); instance_create_depth(0,0,0,nivel_horda);
		duracion2 = duracion;
		audio_sound_gain(duracion2,0,800);
		duracion = audio_play_sound(music_medieval_oleada_2_intro,1000,0);
		control = false;
		cual2 = 3;
	}
	if audio_is_playing(music_medieval_oleada_2_intro) and audio_sound_get_track_position(duracion) > 7.52
	{
		duracion = audio_play_sound(music_medieval_oleada_2_loop,1000,0);
	}
	if audio_is_playing(music_medieval_oleada_2_loop) and audio_sound_get_track_position(duracion) > 52.46
	{
		duracion = audio_play_sound(music_medieval_oleada_2_loop,1000,0);
	}
	if !audio_is_playing(duracion) {duracion = audio_play_sound(music_medieval_oleada_2_loop,1000,0);}
}
#endregion
#region//oleada3
if oleada_3 = true
{
	if control = true
	{
		instance_destroy(nivel_horda); instance_create_depth(0,0,0,nivel_horda);
		duracion2 = duracion;
		audio_sound_gain(duracion2,0,800);
		duracion = audio_play_sound(music_medieval_oleada_3_intro,1000,0);
		control = false;
		cual2 = 2;
	}
	if audio_is_playing(music_medieval_oleada_3_intro) and audio_sound_get_track_position(duracion) > 7.04
	{
		duracion = audio_play_sound(music_medieval_oleada_3_loop,1000,0);
	}
	if audio_is_playing(music_medieval_oleada_3_loop) and audio_sound_get_track_position(duracion) > 53.67
	{
		duracion = audio_play_sound(music_medieval_oleada_3_loop,1000,0);
	}
	if !audio_is_playing(duracion) {duracion = audio_play_sound(music_medieval_oleada_3_loop,1000,0);}
}
#endregion
#region//oleada4
if oleada_4 = true
{
	if control = true
	{
		instance_destroy(nivel_horda); var i = instance_create_depth(0,0,0,nivel_horda); i.masiva = true;
		duracion2 = duracion;
		audio_sound_gain(duracion2,0,800);
		duracion = audio_play_sound(music_medieval_oleada_4_intro,1000,0);
		control = false;
		cual2 = 2;
	}
	if audio_is_playing(music_medieval_oleada_4_intro) and audio_sound_get_track_position(duracion) > 5.42
	{
		duracion = audio_play_sound(music_medieval_oleada_4_loop,1000,0);
	}
	if audio_is_playing(music_medieval_oleada_4_loop) and audio_sound_get_track_position(duracion) > 54.24
	{
		duracion = audio_play_sound(music_medieval_oleada_4_loop,1000,0);
	}
	if !audio_is_playing(duracion) {duracion = audio_play_sound(music_medieval_oleada_4_loop,1000,0);}
}
#endregion