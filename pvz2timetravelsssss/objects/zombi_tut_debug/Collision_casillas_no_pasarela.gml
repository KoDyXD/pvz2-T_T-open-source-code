var i = instance_place(x+45,y,casillas_no_pasarela);
if (i != noone)
{
	if x > 2324
	{
		instance_create_depth(2324,y,depth,efect_caer_agua);
	}
	else
	{
		instance_create_depth(x,y,depth,efect_caer_agua);
	}
	instance_destroy();
}