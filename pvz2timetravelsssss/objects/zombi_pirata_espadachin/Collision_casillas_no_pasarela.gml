if accion = "normal"
{
	var i = instance_place(x+45,y,casillas_no_pasarela);
	if (i != noone)
	{
		if x > 2324
		{
			instance_create_layer(2324,i.pos*186,"npcs",efect_caer_agua);
		}
		else
		{
			instance_create_depth(x,i.pos*186,depth,efect_caer_agua);
		}
		instance_destroy();
	}
}