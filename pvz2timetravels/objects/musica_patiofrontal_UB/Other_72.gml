/// @description Inserte aquí la descripción
if audio_group_is_loaded(grupo_musica_frontal) and !audio_is_playing(music_patio_frontal_UB) and intro = false
{
	duracion = audio_play_sound(music_patio_frontal_UB,1000,0);
	intro = true;
}