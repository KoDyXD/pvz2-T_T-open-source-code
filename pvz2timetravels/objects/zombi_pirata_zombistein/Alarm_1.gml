/// @description rugido del zombi
if obj_control_niveles_extras.alarm[10] = -1
{
	var i = audio_play_sound(choose(sound_zombi_garg_rugir_1,sound_zombi_garg_rugir_2, sound_zombi_garg_rugir_3, sound_zombi_garg_rugir_4, sound_zombi_garg_rugir_5, sound_zombi_garg_rugir_6,sound_zombi_garg_rugir_7,sound_zombi_garg_rugir_8,sound_zombi_garg_rugir_9,sound_zombi_garg_rugir_10),5,0);
	audio_sound_gain(i,0.5,0);
	obj_control_niveles_extras.alarm[10] = 50;
}
alarm_set(1,irandom_range(500,2000));