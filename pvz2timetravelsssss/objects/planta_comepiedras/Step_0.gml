/// @description comer tumbas
if skeleton_animation_get() = "spawn" and image_index >= 20
{
	skeleton_animation_set("comer");
	image_index = 0;
	if instance_exists(inst) {inst.alarm[0] = 240;}
}

if image_index >= 144
{
	instance_destroy();
}