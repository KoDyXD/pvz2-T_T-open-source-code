/// @description forzar reanudar partida
if menu_boton_pausar.click2 = false and !instance_exists(obj_transicion)
{
	global.reanudar = true;
}