/// @description caer al agua en mares piratas
var i = instance_place(x-sprite_width/2,y,casillas_no_pasarela);
if (i != noone)
{
	instance_create_depth(x,(y div 186)*186+166,depth,efect_caer_agua);
	instance_destroy();
}