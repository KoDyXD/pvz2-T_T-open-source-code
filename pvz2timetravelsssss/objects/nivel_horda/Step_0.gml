/// @description Inserte aquí la descripción
if a = true
{
	if audio_sound_get_track_position(duracion) > 3.1
	{
		if masiva = false
		{
			instance_destroy();
		}
		else
		{
			texto = "OLEADA FINAL";
			a = false;
			scala = 0.8;
			duracion = audio_play_sound(sound_oleada_masiva,100,0);
		}
	}
}
else
{
	if audio_sound_get_track_position(duracion) > 3.8
	{
		instance_destroy();
	}
}

if scala < 1.1 {scala += 0.035;}