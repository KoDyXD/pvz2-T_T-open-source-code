if instance_exists(sol_debug) {sol_debug.click = false;}

if alarm[0] = -1 and alarm[1] > 0
{
	if tamano > 1 {tamano -= 0.1;}
	intensidad -= 0.01;
}

if tamano < 2 and sonido = true {audio_play_sound(sound_oleada_masiva,100,0); sonido = false;}

if intensidad2 < 1 {intensidad2 += 0.1;}
instance_destroy(musica_ambiente_egipto);
audio_stop_sound(ambiente_egipto_1);