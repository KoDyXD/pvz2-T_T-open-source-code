/// @description OLEADAS
#region//oleada2
if oleada_2 = true and control = true
{
	instance_destroy(nivel_horda); instance_create_depth(0,0,0,nivel_horda);
	control = false;
	cual2 = 3;
}
#endregion
#region//oleada3
if oleada_3 = true and control = true
{
	instance_destroy(nivel_horda); instance_create_depth(0,0,0,nivel_horda);
	control = false;
	cual2 = 2;
}
#endregion
#region//oleada4
if oleada_4 = true and control = true
{
	instance_destroy(nivel_horda); var i = instance_create_depth(0,0,0,nivel_horda); i.masiva = true;
	control = false;
	cual2 = 2;
}
#endregion

#region//distintas musicas
if music_cual == "semillas"
{
	if !audio_is_playing(music_neon_semillas_intro) and !audio_is_playing(music_neon_semillas_loop)
	{
		if cual == 0
		{
			var _trans = audio_play_sound(choose(music_neon_transicion_1,music_neon_transicion_2,music_neon_transicion_3,music_neon_transicion_4,music_neon_transicion_5),500,0);
			audio_sound_gain(_trans,global.vol_musica/2,0);
			cual = 1;
		}
		duracion2 = duracion;
		audio_sound_gain(duracion2,0,400);
		duracion = audio_play_sound(music_neon_semillas_intro,1000,0);
	}
	if audio_is_playing(music_neon_semillas_intro) and audio_sound_get_track_position(duracion) > 5.04
	{
		duracion = audio_play_sound(music_neon_semillas_loop,1000,0);
	}
	if audio_is_playing(music_neon_semillas_loop) and audio_sound_get_track_position(duracion) > 29.92
	{
		duracion = audio_play_sound(music_neon_semillas_loop,1000,0);
	}
	if !audio_is_playing(duracion) {duracion = audio_play_sound(music_neon_semillas_intro,1000,0);}
}
if music_cual == "punk"
{
	if !audio_is_playing(music_neon_punk_intro) and !audio_is_playing(music_neon_punk_loop)
	{
		var _trans = audio_play_sound(choose(music_neon_transicion_1,music_neon_transicion_2,music_neon_transicion_3,music_neon_transicion_4,music_neon_transicion_5),500,0);
		audio_sound_gain(_trans,global.vol_musica/2,0);
		duracion2 = duracion;
		audio_sound_gain(duracion2,0,400);
		duracion = audio_play_sound(music_neon_punk_intro,1000,0);
	}
	if audio_is_playing(music_neon_punk_intro) and audio_sound_get_track_position(duracion) > 10.26
	{
		duracion = audio_play_sound(music_neon_punk_loop,1000,0);
	}
	if audio_is_playing(music_neon_punk_loop) and audio_sound_get_track_position(duracion) > 53.91
	{
		duracion = audio_play_sound(music_neon_punk_loop,1000,0);
	}
	if !audio_is_playing(duracion) {duracion = audio_play_sound(music_neon_punk_loop,1000,0);}
}
if music_cual == "pop"
{
	if !audio_is_playing(music_neon_pop_loop_1) and !audio_is_playing(music_neon_pop_loop_2) and !audio_is_playing(music_neon_pop_loop_3) and !audio_is_playing(music_neon_pop_loop_4)
	{
		var _trans = audio_play_sound(choose(music_neon_transicion_1,music_neon_transicion_2,music_neon_transicion_3,music_neon_transicion_4,music_neon_transicion_5),500,0);
		audio_sound_gain(_trans,global.vol_musica/2,0);
		duracion2 = duracion;
		audio_sound_gain(duracion2,0,400);
		duracion = audio_play_sound(music_neon_pop_loop_1,1000,0);
	}
	if (audio_is_playing(music_neon_pop_loop_1) and audio_sound_get_track_position(duracion) > 9.64)// and (cual == 3 or cual == 4)
	{
		var _i = choose(music_neon_pop_loop_3,music_neon_pop_loop_4);
		duracion = audio_play_sound(_i,1000,0);
		if _i == music_neon_pop_loop_3 {cual = choose(2,3);}
		if _i == music_neon_pop_loop_4 {cual = choose(1,2,3);}
	}
	if (audio_is_playing(music_neon_pop_loop_2))
	{
		if audio_sound_get_track_position(duracion) > 9.6
		{
			duracion = audio_play_sound(music_neon_pop_loop_4,1000,0);
			cual = choose(1,2,3);
		}
	}
	if (audio_is_playing(music_neon_pop_loop_3)) and audio_sound_get_track_position(duracion) > 11.14
	{
		var _i = music_neon_pop_loop_2;
		duracion = audio_play_sound(_i,1000,0);
		if _i == music_neon_pop_loop_2 {cual = 4;}
	}
	if (audio_is_playing(music_neon_pop_loop_4))
	{
		if cual == 1
		{
			if audio_sound_get_track_position(duracion) > 19.19
			{
				duracion = audio_play_sound(music_neon_pop_loop_1,1000,0);
				cual = choose(3,4);
			}
		}
		if cual == 2
		{
			if audio_sound_get_track_position(duracion) > 19.2
			{
				duracion = audio_play_sound(music_neon_pop_loop_2,1000,0);
				cual = 4;
			}
		}
		if cual == 3
		{
			if audio_sound_get_track_position(duracion) > 19.26
			{
				duracion = audio_play_sound(music_neon_pop_loop_3,1000,0);
				cual = 2;
			}
		}
	}
	if !audio_is_playing(duracion) {duracion = audio_play_sound(music_neon_pop_loop_1,1000,0);}
}
if music_cual == "rap"
{
	if !audio_is_playing(music_neon_rap_loop_1) and !audio_is_playing(music_neon_rap_loop_2) and !audio_is_playing(music_neon_rap_loop_3) and !audio_is_playing(music_neon_rap_loop_4)
	{
		var _trans = audio_play_sound(choose(music_neon_transicion_1,music_neon_transicion_2,music_neon_transicion_3,music_neon_transicion_4,music_neon_transicion_5),500,0);
		audio_sound_gain(_trans,global.vol_musica/2,0);
		duracion2 = duracion;
		audio_sound_gain(duracion2,0,400);
		duracion = audio_play_sound(music_neon_rap_loop_2,1000,0);
		cual = choose(1,3,4);
	}
	if (audio_is_playing(music_neon_rap_loop_1))
	{
		if cual == 2 and audio_sound_get_track_position(duracion) > 14.4
		{
			duracion = audio_play_sound(music_neon_rap_loop_2,1000,0);
			cual = choose(1,3,4);
		}
		if cual == 4 and audio_sound_get_track_position(duracion) > 15.12
		{
			duracion = audio_play_sound(music_neon_rap_loop_4,1000,0);
			cual = choose(1,2,3);
		}
	}
	if (audio_is_playing(music_neon_rap_loop_2)) and audio_sound_get_track_position(duracion) > 23.04
	{
		var _i = choose(music_neon_rap_loop_1,music_neon_rap_loop_3,music_neon_rap_loop_4);
		duracion = audio_play_sound(_i,1000,0);
		if _i == music_neon_rap_loop_1 {cual = choose(2,4);}
		if _i == music_neon_rap_loop_3 {cual = choose(1,2);}
		if _i == music_neon_rap_loop_4 {cual = choose(1,2,3);}
	}
	if (audio_is_playing(music_neon_rap_loop_3)) and audio_sound_get_track_position(duracion) > 11.52
	{
		var _i = choose(music_neon_rap_loop_1,music_neon_rap_loop_2);
		duracion = audio_play_sound(_i,1000,0);
		if _i == music_neon_rap_loop_1 {cual = choose(2,4);}
		if _i == music_neon_rap_loop_2 {cual = choose(1,3,4);}
	}
	if (audio_is_playing(music_neon_rap_loop_4)) and audio_sound_get_track_position(duracion) > 15.3
	{
		var _i = choose(music_neon_rap_loop_1,music_neon_rap_loop_2,music_neon_rap_loop_3);
		duracion = audio_play_sound(_i,1000,0);
		if _i == music_neon_rap_loop_1 {cual = choose(2,4);}
		if _i == music_neon_rap_loop_2 {cual = choose(1,3,4);}
		if _i == music_neon_rap_loop_3 {cual = choose(1,2);}
	}
	if !audio_is_playing(duracion) {duracion = audio_play_sound(music_neon_rap_loop_1,1000,0);}
}
if music_cual == "metal"
{
	if !audio_is_playing(music_neon_metal_intro) and !audio_is_playing(music_neon_metal_loop_1) and !audio_is_playing(music_neon_metal_loop_2) and !audio_is_playing(music_neon_metal_loop_3) and !audio_is_playing(music_neon_metal_loop_4) and !audio_is_playing(music_neon_metal_loop_5) and !audio_is_playing(music_neon_metal_loop_6)
	{
		var _trans = audio_play_sound(choose(music_neon_transicion_1,music_neon_transicion_2,music_neon_transicion_3,music_neon_transicion_4,music_neon_transicion_5),500,0);
		audio_sound_gain(_trans,global.vol_musica/2,0);
		duracion2 = duracion;
		audio_sound_gain(duracion2,0,400);
		var _i = choose(music_neon_metal_loop_1,music_neon_metal_loop_2,music_neon_metal_loop_3,music_neon_metal_loop_4,music_neon_metal_loop_5,music_neon_metal_loop_6);
		duracion = audio_play_sound(_i,1000,0);
	}
	if audio_is_playing(music_neon_metal_loop_1) or audio_is_playing(music_neon_metal_loop_2) or audio_is_playing(music_neon_metal_loop_3) or audio_is_playing(music_neon_metal_loop_4) or audio_is_playing(music_neon_metal_loop_5) or audio_is_playing(music_neon_metal_loop_6)
	{
		if audio_sound_get_track_position(duracion) > 58.54
		{
			var _i = choose(music_neon_metal_loop_1,music_neon_metal_loop_2,music_neon_metal_loop_3,music_neon_metal_loop_4,music_neon_metal_loop_5,music_neon_metal_loop_6);
			duracion = audio_play_sound(_i,1000,0);
		}
	}
	if !audio_is_playing(duracion) {duracion = audio_play_sound(music_neon_metal_intro,1000,0);}
}
if music_cual == "balada"
{
	if !audio_is_playing(music_neon_balada_intro) and !audio_is_playing(music_neon_balada_loop)
	{
		var _trans = audio_play_sound(choose(music_neon_transicion_1,music_neon_transicion_2,music_neon_transicion_3,music_neon_transicion_4,music_neon_transicion_5),500,0);
		audio_sound_gain(_trans,global.vol_musica/2,0);
		duracion2 = duracion;
		audio_sound_gain(duracion2,0,400);
		duracion = audio_play_sound(music_neon_balada_intro,1000,0);
	}
	if audio_is_playing(music_neon_balada_intro) and audio_sound_get_track_position(duracion) > 5.43
	{
		duracion = audio_play_sound(music_neon_balada_loop,1000,0);
	}
	if audio_is_playing(music_neon_balada_loop) and audio_sound_get_track_position(duracion) > 64.72
	{
		duracion = audio_play_sound(music_neon_balada_loop,1000,0);
	}
	if !audio_is_playing(duracion) {duracion = audio_play_sound(music_neon_balada_intro,1000,0);}
}
if music_cual == "8bit"
{
	if !audio_is_playing(music_neon_8bit_loop)
	{
		var _trans = audio_play_sound(choose(music_neon_transicion_1,music_neon_transicion_2,music_neon_transicion_3,music_neon_transicion_4,music_neon_transicion_5),500,0);
		audio_sound_gain(_trans,global.vol_musica/2,0);
		duracion2 = duracion;
		audio_sound_gain(duracion2,0,400);
		duracion = audio_play_sound(music_neon_8bit_loop,1000,0);
	}
	if audio_is_playing(music_neon_8bit_loop) and audio_sound_get_track_position(duracion) > 108.5
	{
		duracion = audio_play_sound(music_neon_8bit_loop,1000,0);
	}
	if !audio_is_playing(duracion) {duracion = audio_play_sound(music_neon_8bit_loop,1000,0);}
}
#endregion