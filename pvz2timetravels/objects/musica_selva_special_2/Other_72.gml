/// @description Inserte aquí la descripción
if audio_group_is_loaded(grupo_musica_pirata2) and !audio_is_playing(music_selva_special_2) and intro = false
{
	duracion = audio_play_sound(music_selva_special_2, 1000, 0);
	intro = true;
}