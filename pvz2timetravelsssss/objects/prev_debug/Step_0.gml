/// @description Inserte aquí la descripción
//mover semillas en cinematica
if instance_exists(menu_selector)
{
	if instance_exists(menu_selector_sems_mover)
	{
		y = menu_selector.y+y_pos_selector;
	}
	else
	{
		instance_destroy();
	}
}