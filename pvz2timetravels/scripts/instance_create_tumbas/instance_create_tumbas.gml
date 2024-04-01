//crear tumbas rapido
function instance_create_tumbas(x1,y1,x2,y2,cantidadMIN,cantidadMAX,tumba){

	var cantidad = irandom_range(cantidadMIN,cantidadMAX);

	casillas();

	for (var i = 0; i < cantidad; ++i) {
		//var _cas_x = cas_x[irandom_range(x1,x2)];
		//var _cas_y = cas_y[irandom_range(y1,y2)];
		var _cas_x = irandom_range(x1,x2);
		var _cas_y = irandom_range(y1,y2);
		if !collision_rectangle((_cas_x+5)*166,(_cas_y+2)*186,(_cas_x+6)*166,(_cas_y+3)*186,casillas_no_plantable,1,0)
		{
			instance_create_layer(cas_x[_cas_x],cas_y[_cas_y],"npcs",tumba);
		}
	}
}

//con este script se crean tumbas aleatorias