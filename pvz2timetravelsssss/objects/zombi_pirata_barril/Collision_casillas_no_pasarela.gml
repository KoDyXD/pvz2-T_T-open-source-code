var i = instance_place(x+45,y,casillas_no_pasarela);
if (i != noone)
{
	instance_create_layer(x,(y div 186)*186+166,"npcs",efect_caer_agua);
	instance_destroy();
}