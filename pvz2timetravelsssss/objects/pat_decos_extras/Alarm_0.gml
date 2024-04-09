/// @description crear areas nop plantables xd
switch(patio)
{
	case 1:
		var i = instance_create_layer(996,660,"casillas",casillas_no_plantable);
		i.image_xscale = 9;
		i.image_yscale = 2;
		var i = instance_create_layer(996,1222,"casillas",casillas_no_plantable);
		i.image_xscale = 9;
		i.image_yscale = 2;
	break;
	case 2:
		var i = instance_create_layer(996,610,"casillas",casillas_no_plantable);
		i.image_xscale = 9;
		i.image_yscale = 1;
		var i = instance_create_layer(996,1356,"casillas",casillas_no_plantable);
		i.image_xscale = 9;
		i.image_yscale = 1;
	break;
}