/// @description oleadas
if oleada < oleada_max+1
{
	if oleada = 0 and !instance_exists(nivel_horda) {audio_play_sound(sound_oleada_1, 50, 0)};	//sonido de que ya viene la primera oleada
	music = true;	//permite que el nivel detecte si la oleada es con bandera para cambiar la musica
	oleada += 1;	//aumentar el valor de la oleada
	adelantado = true;	//permitir que la siguiente oleada se adelante si no hay mas zombis
	if menorar = false {menorar = true;}else{partes += limite/oleada_max+1;}	//permitir el avance de la barra de progreso
	alarm_set(0,irandom_range(720,1080));	//alarma para crear la siguiente oleada
}

if oleada <= oleada_max
{
	var _oleada = global.editor_oleada_cual;
	
	for (var i = 0; i < array_length(_oleada); ++i) {
		var _oleada1 = _oleada[i];
		var _oleada_cual = _oleada1[0];
	    if _oleada_cual = oleada	//comparar si la oleada coincide
		{
			var _tipo = _oleada1[1];
			switch(_tipo)
			{
				case "zombi":
					var _x = real(_oleada1[2]);	//recoger la posicion de X
					var _y = real(_oleada1[3]);	//recoger la posicion en Y
					var _c_min = real(_oleada1[5]);	//recoger la cantidad minima de zombis
					var _c_max = real(_oleada1[6]);	//recoger la cantidad maxima de zombis
					var _zombi = asset_get_index(_oleada1[4]);	//recoger el zombi a crear
					instance_create_zombis(_x,_y,_c_min,_c_max,_zombi);
				break;
				case "tumba":
					instance_create_tumba(real(_oleada1[2]),real(_oleada1[3]),asset_get_index(_oleada1[4]));
				break;
				case "tumbas":
					instance_create_tumbas(real(_oleada1[2]),real(_oleada1[3]),real(_oleada1[4]),real(_oleada1[5]),real(_oleada1[6]),real(_oleada1[7]),asset_get_index(_oleada1[8]));
				break;
				case "planta":
					var _x = real(_oleada1[2]);
					var _y = real(_oleada1[3]);
					if !collision_rectangle((_x+5)*166,(_y+2)*186,(_x+6)*166,(_y+3)*186,casillas_no_plantable,1,0)
					{
						var _tumba = noone;
						_tumba = collision_rectangle((_x+5)*166+10,(_y+2)*186+10,(_x+5)*166-10+166,(_y+2)*186-10+186,tumba_egipto,0,1);
						if _tumba != noone
						{
							instance_destroy(_tumba);
						}
						var _planta = noone;
						_planta = collision_rectangle((_x+5)*166+10,(_y+2)*186+10,(_x+5)*166-10+166,(_y+2)*186-10+186,oPlantaGeneral,0,1);
						if _planta != noone
						{
							instance_destroy(_planta);
						}
						instance_create_planta(_x,_y,asset_get_index(_oleada1[4]),false);
						instance_create_layer(cas_x[_x],cas_y[_y],"npcs",efecto_humo_spawn);
						instance_create_layer(cas_x[_x],cas_y[_y],"npcs",efect_tierra_plantar);
					}
				break;
				case "VCN":
					scr_music_vcn(_oleada1[2]);
				break;
			}
		}
	}
}