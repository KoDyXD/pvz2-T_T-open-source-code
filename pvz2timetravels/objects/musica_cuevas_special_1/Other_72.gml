/// @description Inserte aquí la descripción
if audio_group_is_loaded(audiogroup2) and !audio_is_playing(music_cuevas_special_1) and intro = false
{
	duracion = audio_play_sound(music_cuevas_special_1, 1000, 0);
	intro = true;
}