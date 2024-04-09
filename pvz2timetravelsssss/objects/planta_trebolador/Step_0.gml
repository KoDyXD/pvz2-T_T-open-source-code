/// @description hacer que funcione la planta
if skeleton_animation_get() = "floralfury" and image_index >= 29
{
	instance_create_layer(0,0,"npcs",proj_trebolador);
	skeleton_animation_set("producir");
	image_index = 0;
}
if skeleton_animation_get() = "producir" and image_index >= 35
{
	instance_destroy();
}