//este instance_create sirve para crear plantas en peligro 
function instance_create_proteger(x,y,planta){
	
	var _x_prot = 996;
	var _y_prot = 558;
	casillas();
	switch(x)
	{
		case 1:
			_x_prot = 996;
		break;
		case 2:
			_x_prot = 1162;
		break;
		case 3:
			_x_prot = 1328;
		break;
		case 4:
			_x_prot = 1494;
		break;
		case 5:
			_x_prot = 1660;
		break;
		case 6:
			_x_prot = 1826;
		break;
		case 7:
			_x_prot = 1992;
		break;
		case 8:
			_x_prot = 2158;
		break;
		case 9:
			_x_prot = 2324;
		break;
	}
	switch(y)
	{
		case 1:
			_y_prot = 558;
		break;
		case 2:
			_y_prot = 744;
		break;
		case 3:
			_y_prot = 930;
		break;
		case 4:
			_y_prot = 1116;
		break;
		case 5:
			_y_prot = 1302;
		break;
	}
	
	instance_create_layer(_x_prot,_y_prot,"npcs",npc_desafio_proteger);
	instance_create_layer(cas_x[x],cas_y[y],"npcs",planta);
}