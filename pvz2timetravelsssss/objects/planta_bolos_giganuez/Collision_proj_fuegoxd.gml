/// @description recibir daño
var i = instance_place(x,y,proj_fuegoxd);
if (i != noone)
{
	audio_sound_gain(snd,0,60);
	instance_destroy();
	var j = instance_create_layer(x,y,"npcs",planta_fuego);
	with(j)
	{
		depth = other.depth;
		skeleton_animation_set("arder2");
	}
}