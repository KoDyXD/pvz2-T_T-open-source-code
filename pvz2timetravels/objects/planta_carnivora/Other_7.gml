/// @description fin de anim
if comer = true
{
	if skeleton_animation_get() = "atacar"
	{
		skeleton_animation_set("comer1");
		image_index = 0;
		alarm_set(1,1020);
	}
	if skeleton_animation_get() = "comer1"
	{
		skeleton_animation_set("comer2");
		image_index = 0;
	}
	if skeleton_animation_get() = "comer2" and alarm[1] = -1
	{
		inst = noone;
		skeleton_animation_set("tragar");
		image_index = 0;
	}
}