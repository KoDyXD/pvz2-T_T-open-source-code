// @description choque con guisantes
var i = instance_place(x,y,tumba_egipto);
if (i != noone)
{
	with(i)
	{
		if skeleton_animation_get() = "tranquilo"
		{
			with(other)
			{
				instance_create_layer(x,y,"npcs",expl_explotonuez);
				audio_sound_gain(snd,0,60);
				instance_destroy();
			}
		}
	}
}