/// @description Inserte aquí la descripción
if !audio_is_playing(duracion)
{
	duracion = audio_play_sound(ambiente_frontal,1000,1);
	audio_sound_gain(duracion,0,0);
	audio_sound_gain(duracion,1,3000);
}