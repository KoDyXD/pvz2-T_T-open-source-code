/// @description rugido del zombi
if obj_control_niveles_extras.alarm[10] = -1
{
	var i =audio_play_sound(choose(sound_zombi_gaviota_rugir_1, sound_zombi_gaviota_rugir_2, sound_zombi_gaviota_rugir_3, sound_zombi_gaviota_rugir_4), 5, 0);
	audio_sound_gain(i,0.5,0);
	obj_control_niveles_extras.alarm[10] =50;
}
alarm_set(1,irandom_range(500,2000));