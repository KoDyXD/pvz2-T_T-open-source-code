//Este script permite modificar el background, musica y algunos extras de los niveles
function scr_mod_nivel(nivel_id,music,patio,cam,oleadas,oleadas_band,nombre){
	
	randomize();	//aleatoriza el spawn de zombis y semilleros en cinta transportadora
	
	//fondo del patio
	var _i = layer_get_id("Background");
	var _ii = layer_background_get_id(_i);
	layer_background_sprite(_ii, patio);
	var _iii = instance_create_layer(0,0,"decoracion",pat_decos);
	_iii.patio = layer_background_get_sprite(_ii);
	lvl_patio = patio;
	
	if patio = spr_patio_pirata
	{
		instance_create_depth(0,0,50,pat_pirata_agua);
		scr_mod_nivel_pasarela(0,0,0,0,0);
	}
	
	instance_create_depth(0,0,0,music);	//musica del nivel
	
	//camara
	switch(cam)
	{
		case -1:
			//no crear una camara aqui
		break;
		case 0:	//seleccionar camara automaticamente por cantidad de plantas obtenidas (util en los primeros niveles del antiguo egipto y del tutorial)
			if global.cuentasem < 6 {instance_create_depth(1472.5,1116,0,camara2);}else{instance_create_depth(1472.5,1116,0,camara);}
		break;
		case 1:	//camara que se detiene para el selector de semillas
			instance_create_depth(1472.5,1116,0,camara);
		break;
		case 2:	//camara que no se detiene ni hace aparecer el selector de semillas
			instance_create_depth(1472.5,1116,0,camara2);
		break;
	}
	
	//oleadas y banderas
	oleadas = real(oleadas);
	oleadas_band = real(oleadas_band);
	var _ajustar = false;
	var _banderas;
	var _fuego;
	var _a = 0;
	nivel_id.partes = 448/oleadas+1;	//saca el tamano a aumentar la barra pero en partes
	nivel_id.oleada_max = oleadas;		//cantidad de oleadas totales
	nivel_id.oleada_bandera = oleadas_band;	//cantidad de banderas a crear

	//este loop creara la ubicacion de las banderas en la barra de progreso
	for (var i = 0; i < oleadas_band; ++i) {
		_banderas[i] = i+1;
		nivel_id.banderas[i] = _banderas[i];
		_fuego[i] = abs(((oleadas)/(i-oleadas_band)));
		nivel_id.fuego[i] = _fuego[i]
		if _fuego[i] = (oleadas)/oleadas_band {_ajustar = true; _a = _fuego[i]}
	}

	//este loop solo ajusta la oleada a la que pertenece la bandera
	if _ajustar = true
	{
		for (var i = 0; i < array_length(_fuego); ++i) {
		    _fuego[i] = _a*(i+1);
			nivel_id.fuego[i] = _fuego[i];
		}
	}
	
	nombrexd = nombre;	//colocarle el nombre al nivel
}