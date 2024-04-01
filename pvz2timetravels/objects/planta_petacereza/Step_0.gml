/// @description detecciones
//explotar
if skeleton_animation_get() = "explotar" and image_index >= 22
{
	instance_create_layer(x,y,"npcs",expl_petacereza);
	instance_destroy();
}