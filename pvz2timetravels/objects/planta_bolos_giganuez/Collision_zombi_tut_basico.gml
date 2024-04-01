// @description choque con guisantes
var i = instance_place(x,y,zombi_tut_basico);
if (i != noone)
{
	instance_create_layer(x,y,"npcs",expl_explotonuez);
	audio_sound_gain(snd,0,60);
	instance_destroy();
}