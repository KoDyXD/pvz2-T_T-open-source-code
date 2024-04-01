function scr_nivel_desafios(desafios){
	//desafios contiene el desafio y toda la info relacionada almacenada en una array
	//ejemplo:
	//scr_nivel_desafios(
	//[
	//	["objetivo_ataque_masivo"],
	//	["objetivo_semillas_dadas"],
	//	["objetivo_costo_distinto"],
	//]
	//)
	var _pos_array = 0;		//que desafio le toca leer
	var _des_pos = 0;	//posicion en la hud para desafios como el solar
	var _des_proteger = "nada";	//guarda la id del desafio proteger para evitar que se duplique
	var _i = instance_create_depth(0,0,0,objetivo_cuales);	//este objeto contendra toda la info que se mostrara al jugador
	_i.desafio = [
		[desafios],
	]
	with(_i)
	{
		for (var i = 0; i < array_length(desafios); ++i) {
			switch(desafios[i][0])
			{
				case objetivo_ataquemasivo:
				{
					var _img = 3;
					var _frase = "FRASE A USAR";

					var fondo_id = layer_get_id("Background");
					var back_id = layer_background_get_id(fondo_id);
					switch(layer_background_get_sprite(back_id))
					{
						case spr_patio_tutorial:
							_frase = "Sobrevive a un ataque masivo en tu patio frontal.";
						break;
						case spr_patio_egipto:
							_frase = "Sobrevive a un ataque masivo en el Antiguo Egipto."
						break;
						case spr_patio_pirata:
							_frase = "Sobrevive a un ataque masivo en los Mares Piratas."
						break;
					}
					objetivo_cuales.frase[_pos_array] = [_frase,_img];
					_pos_array += 1;
				}
				break;
				case objetivo_costo_distinto:
				{
					var _img = 6;
					var _frase = "¡El costo de algunas plantas ha cambiado!";
					objetivo_cuales.frase[_pos_array] = [_frase,_img];
					_pos_array += 1;
				}
				break;
				case objetivo_semillas_dadas:
				{
					var _img = 5;
					var _frase = "Sobrevive con las plantas seleccionadas.";
					objetivo_cuales.frase[_pos_array] = [_frase,_img];
					_pos_array += 1;
				}
				break;
				case objetivo_soles:
				{
					var _img = 0;
					var _cant = desafios[i][1];
					var _frase = "Produce y recolecta "+string(_cant)+" soles antes de la oleada final.";

					objetivo_cuales.frase[_pos_array] = [_frase,_img];

					var _des = instance_create_depth(0,0,0,objetivo_soles);
					_des.objetivo = _cant;
					_des.pos1 = _des_pos;
					_des_pos += 1;
					_pos_array += 1;
				}
				break;
				case objetivo_no_solares:
				{
					var _img = 1;
					var _frase = "En este nivel no puedes seleccionar plantas solares.";

					objetivo_cuales.frase[_pos_array] = [_frase,_img];
					
					var _des = instance_create_depth(0,0,0,objetivo_no_solares);
					_pos_array += 1;
				}
				break;
				case objetivo_planta_proteger:
				{
					if _des_proteger == "nada"
					{
						var _img = 4;
						var _frase = "Protege a las plantas en peligro.";

						objetivo_cuales.frase[_pos_array] = [_frase,_img];
						_des_proteger = "lleno";
						_pos_array += 1;
					}
					var _x = desafios[i][1];
					var _y = desafios[i][2];
					var _planta = desafios[i][3];
					instance_create_proteger(_x,_y,_planta);
				}
				break;
				case objetivo_plantas_tener:	//completar
				{
					var _img = 10;
					var _plant = "debug";
					switch(desafios[i][2])
					{
						case planta_lanzaguisantes:
						_plant = "lanzaguisantes"
						break;
						case planta_girasol:
						_plant = "girasoles";
						break;
						case planta_nuez:
						_plant = "nueces";
						break;
						case planta_papapum:
						_plant = "papapums";
						break;
						case planta_coltapulta:
						_plant = "coltapultas";
						break;
						case planta_boomerang:
						_plant = "búmerans";
						break;
						case planta_hielaguisantes:
						_plant = "hielaguisantes";
						break;
						case planta_comepiedras:
						_plant = "comepiedras";
						break;
						case planta_bonkchoy:
						_plant = "bonk choy";
						break;
						case planta_repetidora:
						_plant = "repetidoras";
						break;
						case planta_birasol:
						_plant = "birasoles";
						break;
						case planta_carnivora:
						_plant = "plantas carnívoras";
						break;
						case planta_lanzamaiz:
						_plant = "lanzamaices";
						break;
						case planta_frijuelle:
						_plant = "frijuelles";
						break;
						case planta_pinchohierba:
						_plant = "pinchohierbas";
						break;
						case planta_cococanon:
						_plant = "cococañones";
						break;
						case planta_bocadedragon:
						_plant = "bocas de dragón";
						break;
						case planta_petacereza:
						_plant = "petacerezas";
						break;
						//pinchorroca
						//kiwibestia
						//xd
					}
					var _frase = "Planta "+string(desafios[i][1])+" "+string(_plant)+" antes de la oleada final.";

					objetivo_cuales.frase[_pos_array] = [_frase,_img];

					var _des = instance_create_depth(0,0,0,objetivo_plantas_tener);
					_des.objetivo = desafios[i][1];
					_des.extra = desafios[i][2];
					_des.pos1 = _des_pos;
					_des_pos += 1;
					_pos_array += 1;
				}
				break;
				case objetivo_soles_limite:
				{
					var _img = 11;
					var _cant = desafios[i][1];
					var _frase = "No gastes más de "+string(_cant)+" soles.";

					objetivo_cuales.frase[_pos_array] = [_frase,_img];

					var _des = instance_create_depth(0,0,0,objetivo_soles_limite);
					_des.soles = _cant;
					_des.pos1 = _des_pos;
					_des_pos += 1;
					_pos_array += 1;
				}
				break;
				case objetivo_plantas_limite:
				{
					var _img = 12;
					var _cant = desafios[i][1];
					var _frase = "No tengas más de "+string(_cant)+" plantas.";

					objetivo_cuales.frase[_pos_array] = [_frase,_img];

					var _des = instance_create_depth(0,0,0,objetivo_plantas_limite);
					_des.objetivo = _cant;
					_des.pos1 = _des_pos;
					_des_pos += 1;
					_pos_array += 1;
				}
				break;
				case objetivo_flores_peligro:
				{
					var _img = 13;
					var _frase = "No dejes que los zombis pisen las flores.";

					objetivo_cuales.frase[_pos_array] = [_frase,_img];
					
					instance_create_flores_proteger(desafios[i][1]);
					_pos_array += 1;
				}
				break;
				case objetivo_canones:
				{
					var _img = 14;
					var _frase = "!CUIDADO¡\n!BALAS DE CAÑON¡";
					var _min_x = desafios[i][1]+5;
					if _min_x >= 11 {_min_x = 10;}

					objetivo_cuales.frase[_pos_array] = [_frase,_img];
					
					var _des = instance_create_depth(0,0,0,objetivo_canones);
					_des.min_x = _min_x;
					_pos_array += 1;
				}
				break;
				case objetivo_bolera:
				{
					var _img = 2;
					var _frase = "Sobrevive al ataque de los zombis solo con nueces de bolora.";

					objetivo_cuales.frase[_pos_array] = [_frase,_img];
					
					if !instance_exists(pat_decos_extras)
					{
						var _i = instance_create_layer(0,0,"deco_extra",pat_decos_extras);
						_i.bolera = desafios[i][1];
					}
					else
					{
						pat_decos_extras.bolera = desafios[i][1];
					}
					_pos_array += 1;
				}
				break;
			}
		}
	}
}