//esta funcion permitira crear semilleros especificos facilmente
function semilleros_crear(semilla,costo){
	var _sem = semilla;
	var _cost = costo;
	
	var _x = camera_get_view_x(view_camera[0])+150;
	var _y = camera_get_view_y(view_camera[0])+200;
	
	for (var i = 0; i < array_length(_sem); ++i) {
		var ii = instance_create_layer(_x,_y+152*i,"hud",_sem[i]);
		if _cost[i] >= 0 {ii.sol = _cost[i];}
	}
}

//Guia
/*
Para crear las semillas facilmente se usa este script
En el valor semilla debes poner [] y dentro de esos debes poner las semillas a crear.
En el valor costo se pone cuantos soles requerira la planta
Si se pone -1 se conserva el costo original, pero si se pone un valor igual o mayor a cero ese valor se
establecera como el costo de la planta.
Ejemplo
						   semilla = crear esta planta			   costo
scr_semilleros_crear([semillero_girasol,semillero_lanzaguisantes],[50,-1]);