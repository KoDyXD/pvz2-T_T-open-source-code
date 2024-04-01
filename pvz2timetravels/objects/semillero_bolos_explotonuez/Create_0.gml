/// @description eventos al crearse
image_speed = 0;
image_index = fondo;
depth = -5;

recarga = recarga*60;				//tiempo de recarga en alarma
limite = room_width;

if aumentar = 0	//recargar semilla
{
	alarm_set(0,recarga);
}
else
{
	alarm_set(0,1);
}
if instance_exists(spawn_UB_debug)	//si esta en un nivel de ultimo batallon
{
	alarm_set(0,1);			//recarga instantanea
	global.semillas += 1;	//aumentar el limite semillas en cinta transportadora
	sol = 0;				//costo en soles
}