/// @description Inserte aquí la descripción
if audio_group_is_loaded(grupo_musica_pirata5) and !audio_is_playing(music_futuro_semillas_intro) and intro = false
{
	duracion = audio_play_sound(music_futuro_semillas_intro,1000,0);
	intro = true;
}