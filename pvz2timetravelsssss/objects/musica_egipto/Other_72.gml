/// @description Inserte aquí la descripción
if audio_group_is_loaded(grupo_musica_egipto) and !audio_is_playing(music_egipto_semillas_intro) and intro = false
{
	duracion = audio_play_sound(music_egipto_semillas_intro,1000,0);
	intro = true;
}