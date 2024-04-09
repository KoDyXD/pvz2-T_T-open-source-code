/// @description Insert description here
if x > 2285
{
	x = 2285
}
if x < 1920
{
	x = 1920;
}

if obj_control_niveles_extras.alarm[7] = -1
{
	audio_play_sound(sound_efect_salpicar,5,0);
	obj_control_niveles_extras.alarm[7] =15;
}

skeleton_animation_set(choose("splash 1","splash 2"));

///profundidad
depth = instance_depth_agua_salpicadura(y-30);