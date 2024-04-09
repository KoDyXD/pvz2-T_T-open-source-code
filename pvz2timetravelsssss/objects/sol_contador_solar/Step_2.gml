/// @description Inserte aquí la descripción
if global.quietos = true
{
	x = camera_get_view_x(view_camera[0])+75;
	y = camera_get_view_y(view_camera[0])+75;
}

if visible = false
{
	if instance_exists(menu_selector)
	{
		if global.mover_menu = false and global.mover_destruir = false
		{
			visible = true;
		}
	}
	if global.quietos = false and !instance_exists(spawn_UB_debug)
	{
		visible = true;
	}
}