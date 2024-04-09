//sirve para darle el ambiente de fondo correcto al nivel
function scr_nivel_ambiente(){
	
	_i = layer_get_id("Background");
	_ii = layer_background_get_id(_i);
	switch(layer_background_get_sprite(_ii))
	{
		case spr_patio_tutorial:
			instance_create_depth(0,0,0,musica_ambiente_frontal);
		break;
		case spr_patio_egipto:
			instance_create_depth(0,0,0,musica_ambiente_egipto);
		break;
		case spr_patio_pirata:
			instance_create_depth(0,0,0,musica_ambiente_pirata);	
		break;
	}
}