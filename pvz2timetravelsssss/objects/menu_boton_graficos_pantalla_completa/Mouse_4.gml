/// @description cambiar interpolacion de pixeles
if click2 = false and !instance_exists(obj_transicion) and !instance_exists(obj_transicion_inicio)
{
	if global.pantalla_completa = false
	{
		window_set_fullscreen(true);
		window_center();
		window_set_size(obj_control_niveles_extras._per_x,obj_control_niveles_extras._per_y);
		global.pantalla_completa = true;
	}
	else
	{
		window_set_fullscreen(false);
		window_set_size(obj_control_niveles_extras._per_x/1.25,obj_control_niveles_extras._per_y/1.25);
		window_center();
		global.pantalla_completa = false;
	}
		ini_open("general.ini");
		ini_write_real("extras","pantalla_completa",global.pantalla_completa);
		ini_close();
}