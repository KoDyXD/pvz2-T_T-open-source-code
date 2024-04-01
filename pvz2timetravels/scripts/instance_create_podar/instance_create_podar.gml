///crear rapido las podadoras
function instance_create_podar(cantidad){
	
	
	var _podadora = obj_podadora_tut;
	var _i = layer_get_id("Background");
	var _ii = layer_background_get_id(_i);
	switch(layer_background_get_sprite(_ii))
	{
		case spr_patio_tutorial:
		_podadora = obj_podadora_tut;
		break;
		case spr_patio_egipto:
		_podadora = obj_podadora_egipto;
		break;
		case spr_patio_pirata:
		_podadora = obj_podadora_pirata;
		break;
	}
	
	
	switch(cantidad)
	{
		case 1:
		instance_create_layer(910,700, "npcs", _podadora);
		instance_create_layer(910,890, "npcs", _podadora);
		instance_create_layer(910,1080, "npcs", _podadora);
		instance_create_layer(910,1270, "npcs", _podadora);
		instance_create_layer(910,1460, "npcs", _podadora);
		break;
		case 2:
		instance_create_layer(910,890, "npcs", _podadora);
		instance_create_layer(910,1080, "npcs", _podadora);
		instance_create_layer(910,1270, "npcs", _podadora);
		break;
		case 3:
		instance_create_layer(910,1080, "npcs", _podadora);
		break;
	}
}