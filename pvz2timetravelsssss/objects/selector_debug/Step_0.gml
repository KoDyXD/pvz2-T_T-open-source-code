/// @description mover semillas y destruirlas
//destruir semillas dentro del selector si ya no existe el menu de seleccion de plantas
if !instance_exists(menu_selector) and mover = false {instance_destroy();}

//crear semillas funcionales al iniciar el nivel
if global.mover_destruir = true and !instance_exists(camara) and !instance_exists(nivel_ready_set_plant)
{
	var _x = camera_get_view_x(view_camera[0])+150;
	
	var i = instance_create_depth(_x,y,0,obj);
	i.sol = sol;
	instance_destroy();
}

//reubicar semillas al deseleccionarlas
var _y = camera_get_view_y(view_camera[0])+200;

if !place_meeting(x,y-20,selector_debug) and mover = true and y > _y and global.mover_destruir = false
{
	y -= 151;
}

//hacer un poco mas pequena la semilla si esta bloqueada
if desbloquear == false and image_xscale != 0.9
{
	image_xscale = 0.9;
	image_yscale = 0.9;
}