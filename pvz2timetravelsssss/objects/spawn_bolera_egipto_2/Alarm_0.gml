/// @description crear semillas aleatorias
var _x = camera_get_view_x(view_camera[0])+150;
var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])+200;

var _cual = irandom_range(0,20);
if _cual <= 17
{
	var i = instance_create_depth(_x,_y,-4,semillero_bolos_nuez);
	i.sol = 0;
	i.limite = 1493;
}
else
{
	var i = instance_create_depth(_x,_y,-4,choose(nulo,semillero_bolos_explotonuez));
	i.sol = 0;
	i.limite = 1493;
}
generar = true;