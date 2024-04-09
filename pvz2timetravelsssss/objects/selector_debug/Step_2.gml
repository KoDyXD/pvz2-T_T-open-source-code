/// @description mover selector en cinematica
///mover semillas en cinematica
if mover = false
{
	if instance_exists(menu_selector_sems_mover)
	{
		y = menu_selector_sems_mover.y+y_pos_selector;
	}
	else
	{
		instance_destroy();
	}
	if global.mover_destruir = true
	{
		click = false;
	}
}
else
{
	if global.mover_destruir = true
	{
		x = camera_get_view_x(view_camera[0])+150;
		click = false;
	}
}