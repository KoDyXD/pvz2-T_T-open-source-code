/// @description soundtrack menor del nivel
if !audio_group_is_loaded(grupo_musica_pirata1)
{
	audio_group_load(grupo_musica_pirata1);
}
#region//quitar musica al finalizar el nivel
if global.finalizado = true and not instance_exists(zombi_tipo_general) and finalizado = true
{
	global.finalizado = false;
	audio_sound_gain(duracion, 0, 800);
	duracion = audio_play_sound(music_special_victoria_1,1000,0);
	perder = false;
	intro = false;
	oleada_1 = false;
	oleada_2 = false;
	oleada_3 = false;
	oleada_4 = false;
}
#endregion
#region//reproducir sonido de recompensa
if global.music_patio = true and ganar = true and finalizado = true
{
	if !audio_is_playing(music_medieval_recompensa) and !instance_exists(obj_transicion) {audio_sound_gain(duracion, 0, 800);}
	if !audio_is_playing(music_medieval_recompensa) and !instance_exists(obj_transicion) {duracion = audio_play_sound(music_medieval_recompensa, 1000, 0);}
	if instance_exists(obj_transicion) and !audio_is_playing(music_medieval_recompensa) {if obj_transicion.intensidad >= 1 {alarm_set(1,1); ganar = false;}}
	intro = false;
	oleada_1 = false;
	oleada_2 = false;
	oleada_3 = false;
	oleada_4 = false;
}
#endregion
#region//perder nivel
if perder = true and global.perder = true
{
	finalizado = false;
	perder = false;
	audio_sound_gain(duracion,0, 800);
	audio_play_sound(music_medieval_perder,1000,0);
	audio_play_sound(sound_menu_perder_no,1000,0);
	alarm_set(2, 270);
	intro = false;
	oleada_1 = false;
	oleada_2 = false;
	oleada_3 = false;
	oleada_4 = false;
}
#endregion
#region//cambiar la musica de la oleada automaticamente
if global.m_oleada = true and instance_exists(nivel_debug_xd)
{
	if nivel_debug_xd.oleada = nivel_debug_xd.oleada_max
	{
		global.finalizado = true;
		nivel_debug_xd.recompensa = true;
		instance_create_zombis_aband()	//crear el zombi abanderado
		oleada_4 = true;
		oleada_2 = false;
		oleada_3 = false;
		oleada_1 = false;
		global.m_oleada = false;
		control = true;
	}
	else
	{
		if cual2 = 2
		{
			instance_create_zombis_aband()	//crear el zombi abanderado
			oleada_2 = true;
			oleada_3 = false;
			oleada_4 = false;
			oleada_1 = false;
			control = true;
			global.m_oleada = false;
		}
		if cual2 = 3
		{
			instance_create_zombis_aband()	//crear el zombi abanderado
			oleada_2 = false;
			oleada_3 = true;
			oleada_4 = false;
			oleada_1 = false;
			control = true;
			global.m_oleada = false;
		}
	}
}
#endregion
#region//desacerse del soundtrack que ya no se repoduce
if audio_sound_get_gain(duracion2) <= 0
{
	audio_stop_sound(duracion2);
	duracion2 = noone;
}
#endregion