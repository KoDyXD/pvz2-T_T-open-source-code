/// @description weas para que funcione
if instance_exists(spawn_UB_debug)
{
	y -= mover;
	if y <= camera_get_view_y(view_camera[0])+100 {mover = 0;}else{if place_meeting(x,y-1,semillero_debug) {mover = 0;}else{mover = 2;}}
}

///recargar semillas
if tap = true
{
	if instance_exists(spawn_UB_debug)
	{
		global.semillas -= 1;
		instance_destroy();
	}
	else
	{
		restaurar = false;
		alarm_set(0,recarga);
	}
	tap = false;
}