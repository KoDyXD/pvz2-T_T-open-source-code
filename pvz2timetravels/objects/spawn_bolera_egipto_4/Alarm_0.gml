/// @description crear semillas aleatorias
var _x = camera_get_view_x(view_camera[0])+150;
var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])+200;

var _cual = irandom_range(0,20);
if _cual <= 12
{
	var i = instance_create_depth(_x,_y,-4,semillero_bolos_nuez);
	i.sol = 0;
	i.limite = 1327;
}
else
{
	if _cual <= 16
	{
		var i = instance_create_depth(_x,_y,-4,semillero_papapum);
		i.sol = 0;
	}
	else
	{
		if _cual <= 18
		{
			var i = instance_create_depth(_x,_y,-4,semillero_bolos_explotonuez);
			i.sol = 0;
			i.limite = 1327;
		}
		else
		{
			var _ii = irandom_range(0,5);
			if _ii <= 3
			{
			var i = instance_create_depth(_x,_y,-4,semillero_nuez);
			i.sol = 0;
			}
			else
			{
			var i = instance_create_depth(_x,_y,-4,semillero_bolos_giganuez);
			i.sol = 0;
			i.limite = 1327;
			}
		}
	}
}
generar = true;