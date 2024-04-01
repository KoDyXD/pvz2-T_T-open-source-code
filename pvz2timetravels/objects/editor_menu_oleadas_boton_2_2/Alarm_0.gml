/// @description asignarles los grupos de la oleada correspondiente
oleadas = [
	[0,"zombi",0,0,"nulo",1,1],
]

var _posicion = 0;	//ubicar correctamente en la array de los grupos
var _oleada = global.editor_oleada_cual;	//crear una copia temporal de la array de las oleadas
for (var i = 1; i < array_length(_oleada); ++i) {
	var _oleada1 = _oleada[i];
	var _oleada_cual = _oleada1[0];	//coger el valor de la oleada a la que pertenece
    if _oleada_cual = cual	//si son de la misma oleada
	{
		_posicion += 1;
		//var _oleada1 = _oleada[i];
		var _tipo = _oleada1[1];	//recoger que se generara por ejemplo: zombis, planta, tumbas
		switch(_tipo)
		{
			case "zombi":
				var _x = string(_oleada1[2]);		//coger el valor X
				var _y = string(_oleada1[3]);		//coger el valor Y
				var _zombi = string(_oleada1[4]);	//coger que zombi se creara
				var _cantidad_min = string(_oleada1[5]);	//coger la cantidad minima a generar
				var _cantidad_max = string(_oleada1[6]);	//coger la cantidad maxima a generar
		
				oleadas[_posicion] = [cual,_tipo,_x,_y,_zombi,_cantidad_min,_cantidad_max,i];
			break;
			case "tumba":
				var _x = string(_oleada1[2]);		//coger el valor X
				var _y = string(_oleada1[3]);		//coger el valor Y
				var _tumba = string(_oleada1[4]);	//coger que tumba se creara
		
				oleadas[_posicion] = [cual,_tipo,_x,_y,_tumba,i];
			break;
			case "tumbas":
				var _x1 = string(_oleada1[2]);		//coger el primer valor X
				var _y1 = string(_oleada1[3]);		//coger el primer valor Y
				var _x2 = string(_oleada1[4]);		//coger el segundo valor X
				var _y2 = string(_oleada1[5]);		//coger el segundo valor Y
				var _c_min = string(_oleada1[6]);	//coger cantidad minima a generar
				var _c_max = string(_oleada1[7]);	//coger cantidad minima a generar
				var _tumbas = string(_oleada1[8]);	//coger que tumba se creara
				oleadas[_posicion] = [cual,_tipo,_x1,_y1,_x2,_y2,_c_min,_c_max,_tumbas,i];
			break;
			case "planta":
				var _x = string(_oleada1[2]);		//coger el valor X
				var _y = string(_oleada1[3]);		//coger el valor Y
				var _planta = string(_oleada1[4]);	//coger que planta se creara
		
				oleadas[_posicion] = [cual,_tipo,_x,_y,_planta,i];
			break;
			case "VCN":
				var _musica = string(_oleada1[2]);		//coger el valor de la musica de vueltacasete de neon
		
				oleadas[_posicion] = [cual,_tipo,_musica,i];
			break;
		}
	}
}