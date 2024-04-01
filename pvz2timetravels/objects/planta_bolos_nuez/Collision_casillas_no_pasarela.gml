/// @description caer al agua en mares piratas
var i = collision_rectangle(bbox_left-30,(y-(sprite_height/2))-20,bbox_right-30,(y-(sprite_height/2))+20,casillas_no_pasarela,0,1);
if (i != noone)
{
	audio_stop_sound(snd);
	instance_create_depth(x,(i.y div 186)*186+166,depth,efect_caer_agua);
	instance_destroy();
}