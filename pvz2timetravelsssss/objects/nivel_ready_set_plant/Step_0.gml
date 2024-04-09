/// @description Inserte aquí la descripción
if alarm[0] = -1
{
	if audio_is_playing(duracion)
	{
		if audio_sound_get_track_position(duracion) > 2.8
		{
			instance_activate_all();
			if instance_exists(camara2) {nivel_debug_xd.activar = true;}
			if instance_exists(sol_contador_solar) {sol_contador_solar.reubicar = true;}
			alarm_set(0,1);
		}
	}
	else
	{
		instance_activate_all();
		if instance_exists(camara2) {nivel_debug_xd.activar = true;}
		if instance_exists(sol_contador_solar) {sol_contador_solar.reubicar = true;}
		alarm_set(0,1);
	}
}
if audio_sound_get_track_position(duracion) < 1.1 and scala < 1.5
{
	scala += 0.1;
}