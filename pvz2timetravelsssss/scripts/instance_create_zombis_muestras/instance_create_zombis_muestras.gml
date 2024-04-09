//crear zombis de muestra
function instance_create_zombis_muestras(_zombi,z_min,z_max){
	
	var _limite = 2975;	//limite en eje X para generar zombis de muestra
	var _cant = irandom_range(z_min,z_max);	//cantidad de zombis a generar
	
	//cambiar el limite en eje X para cada patio
	var _capa = layer_get_id("Background");
	var _fondo = layer_background_get_id(_capa);
	switch(layer_background_get_sprite(_fondo))
	{
		case spr_patio_tutorial:
			_limite = 3270;
		break;
		case spr_patio_egipto:
			_limite = 2985;
		break;
		case spr_patio_pirata:
			_limite = 2970;
		break;
	}
	
	///cargar las texturas del zombi (esto sirve si el juego se relantiza al cargar las texturas)
	if _zombi == zombi_egipto_camello { _limite -= 280;}
	if _zombi == zombi_egipto_zombistein or _zombi == zombi_pirata_zombistein {_limite -= 125;}

	//crear zombis
	for (var i = 0; i < _cant; ++i) {
		instance_create_layer(irandom_range(2650,_limite),choose(725,920,1113,1302,1488),"npcs",_zombi);
	}
}