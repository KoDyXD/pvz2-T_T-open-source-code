/// @description crear semillas aleatorias
var _x = camera_get_view_x(view_camera[0])+150;
var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])+200;

var _cual = irandom_range(0,12);
if _cual <= 5
{
	var i = instance_create_depth(_x,_y,-4,semillero_repetidora);
	i.sol = 0;
}
if _cual >= 6 and _cual <= 7
{
	if instance_exists(tumba_egipto)
	{
		var i = instance_create_depth(_x,_y,-4,semillero_comepiedras);
		i.sol = 0;
	}
}
if _cual >= 8 and _cual <= 10
{
	var i = instance_create_depth(_x,_y,-4,semillero_bonkchoy);
	i.sol = 0;
}
if _cual >= 11
{
	var i = instance_create_depth(_x,_y,-4,choose(semillero_bolos_nuez,semillero_bolos_explotonuez));
	i.sol = 0;
}
generar = true;