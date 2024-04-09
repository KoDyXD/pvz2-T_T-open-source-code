/// @description crear semillas aleatorias
var _x = camera_get_view_x(view_camera[0])+150;
var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])+200;

var _cual;
_cual = irandom_range(0,17);
if _cual <= 7
{
	var i = instance_create_depth(_x,_y,-4,choose(semillero_papapum,semillero_lanzaguisantes));
	i.sol = 0;
}
else
{
	if _cual <= 12
	{
		var i = instance_create_depth(_x,_y,-4,semillero_nuez);
		i.sol = 0;
	}
	else if _cual <= 14
	{
		var i = instance_create_depth(_x,_y,-4,choose(semillero_girasol,nulo));
		i.sol = 0;
	}
	else
	{
		var i = instance_create_depth(_x,_y,-4,choose(semillero_repetidora,nulo));
		i.sol = 0;
	}
}
generar = true;