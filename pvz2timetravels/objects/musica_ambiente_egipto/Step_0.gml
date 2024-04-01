/// @description Inserte aquí la descripción
if !audio_is_playing(duracion)
{
	duracion = audio_play_sound(ambiente_egipto_1,1000,1);
	audio_group_set_gain(grupo_ambiente_all,0,0);
	audio_group_set_gain(grupo_ambiente_all,0.2,6000);
}

if audio_is_playing(ambiente_egipto_2) and audio_sound_get_track_position(duracion2) > 3.65
{
	duracion2 = audio_play_sound(choose(ambiente_egipto_3,ambiente_egipto_4,ambiente_egipto_5,ambiente_egipto_6,ambiente_egipto_7,ambiente_egipto_8,ambiente_egipto_9,ambiente_egipto_10),50,0);
}
if audio_is_playing(ambiente_egipto_3) and audio_sound_get_track_position(duracion2) > 2.2
{
	duracion2 = audio_play_sound(choose(ambiente_egipto_2,ambiente_egipto_4,ambiente_egipto_5,ambiente_egipto_6,ambiente_egipto_7,ambiente_egipto_8,ambiente_egipto_9,ambiente_egipto_10),50,0);
}
if audio_is_playing(ambiente_egipto_4) and audio_sound_get_track_position(duracion2) > 3
{
	duracion2 = audio_play_sound(choose(ambiente_egipto_3,ambiente_egipto_2,ambiente_egipto_5,ambiente_egipto_6,ambiente_egipto_7,ambiente_egipto_8,ambiente_egipto_9,ambiente_egipto_10),50,0);
}
if audio_is_playing(ambiente_egipto_5) and audio_sound_get_track_position(duracion2) > 4
{
	duracion2 = audio_play_sound(choose(ambiente_egipto_3,ambiente_egipto_4,ambiente_egipto_2,ambiente_egipto_6,ambiente_egipto_7,ambiente_egipto_8,ambiente_egipto_9,ambiente_egipto_10),50,0);
}
if audio_is_playing(ambiente_egipto_6) and audio_sound_get_track_position(duracion2) > 2.55
{
	duracion2 = audio_play_sound(choose(ambiente_egipto_3,ambiente_egipto_4,ambiente_egipto_5,ambiente_egipto_2,ambiente_egipto_7,ambiente_egipto_8,ambiente_egipto_9,ambiente_egipto_10),50,0);
}
if audio_is_playing(ambiente_egipto_7) and audio_sound_get_track_position(duracion2) > 0.35
{
	duracion2 = audio_play_sound(choose(ambiente_egipto_3,ambiente_egipto_4,ambiente_egipto_5,ambiente_egipto_6,ambiente_egipto_2,ambiente_egipto_8,ambiente_egipto_9,ambiente_egipto_10),50,0);
}
if audio_is_playing(ambiente_egipto_8) and audio_sound_get_track_position(duracion2) > 2.1
{
	duracion2 = audio_play_sound(choose(ambiente_egipto_3,ambiente_egipto_4,ambiente_egipto_5,ambiente_egipto_6,ambiente_egipto_7,ambiente_egipto_2,ambiente_egipto_9,ambiente_egipto_10),50,0);
}
if audio_is_playing(ambiente_egipto_9) and audio_sound_get_track_position(duracion2) > 0.6
{
	duracion2 = audio_play_sound(choose(ambiente_egipto_3,ambiente_egipto_4,ambiente_egipto_5,ambiente_egipto_6,ambiente_egipto_7,ambiente_egipto_8,ambiente_egipto_2,ambiente_egipto_10),50,0);
}
if audio_is_playing(ambiente_egipto_10) and audio_sound_get_track_position(duracion2) > 0.4
{
	duracion2 = audio_play_sound(choose(ambiente_egipto_3,ambiente_egipto_4,ambiente_egipto_5,ambiente_egipto_6,ambiente_egipto_7,ambiente_egipto_8,ambiente_egipto_9,ambiente_egipto_2),50,0);
}

if !audio_is_playing(duracion2)
{
	duracion2 = audio_play_sound(choose(ambiente_egipto_2,ambiente_egipto_3,ambiente_egipto_4,ambiente_egipto_5,ambiente_egipto_6,ambiente_egipto_7,ambiente_egipto_8,ambiente_egipto_9,ambiente_egipto_10),50,0);
}