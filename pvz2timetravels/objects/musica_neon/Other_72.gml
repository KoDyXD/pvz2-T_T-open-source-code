/// @description Inserte aquí la descripción
if audio_group_is_loaded(grupo_musica_pirata6) and !audio_is_playing(music_neon_semillas_intro) and intro = false
{
	if music_cual == "semillas"
	{
		duracion = audio_play_sound(music_neon_semillas_intro, 1000, 0);
	}
	intro = true;
}