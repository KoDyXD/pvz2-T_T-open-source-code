/// @description Inserte aquí la descripción
if audio_group_is_loaded(audiogroup1) and !audio_is_playing(music_vaquero_special_2) and intro = false
{
	duracion = audio_play_sound(music_vaquero_special_2, 1000, 0);
	intro = true;
}