/// @description MUSICA
if !audio_group_is_loaded(audiogroup3)
{
	audio_group_load(audiogroup3);
}

if duracion == music_cinematic_creditos_1 and audio_sound_get_track_position(duracion) >= 158.5
{
	duracion = audio_play_sound(music_cinematic_creditos_2,1000,0);
}
if duracion == music_cinematic_creditos_2 and audio_sound_get_track_position(duracion) >= 178.5
{
	duracion = audio_play_sound(music_cinematic_creditos_1,1000,0);
}

if !audio_is_playing(duracion)
{
	duracion = audio_play_sound(choose(music_cinematic_creditos_1,music_cinematic_creditos_2),1000,0);
}