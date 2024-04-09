/// @description crear semillas aleatorias
var _x = camera_get_view_x(view_camera[0])+150;
var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])+200;

var _cual = irandom_range(0,27);
if _cual <= 5
{
	var i = instance_create_depth(_x,_y,-4,semillero_coltapulta);
	i.sol = 0;
}
if _cual >= 6 and _cual <= 9
{
	var i = instance_create_depth(_x,_y,-4,semillero_boomerang);
	i.sol = 0;
}
if _cual >= 10 and _cual <= 13
{
	var i = instance_create_depth(_x,_y,-4,semillero_hielaguisantes);
	i.sol = 0;
}
if _cual  >= 14 and _cual <= 18
{
	var i = instance_create_depth(_x,_y,-4,semillero_repetidora);
	i.sol = 0;
}
if _cual >= 19 and _cual <= 20
{
	if instance_exists(tumba_egipto)
	{
		var i = instance_create_depth(_x,_y,-4,semillero_comepiedras);
		i.sol = 0;
	}
}
if _cual >= 21 and _cual <= 25
{
	var i = instance_create_depth(_x,_y,-4,semillero_bonkchoy);
	i.sol = 0;
}
if _cual >= 26
{
	var i = instance_create_depth(_x,_y,-4,choose(semillero_bolos_nuez,semillero_bolos_explotonuez));
	i.sol = 0;
}
generar = true;