/// @description destruir las flores si esta chocando con agua de mares piratas
var _y = (y div 186)*186;
var _x = (x div 166)*166;
if collision_rectangle(_x+10,_y+10,_x+156,_y+176,casillas_no_pasarela,0,1)
{
	instance_destroy();
}