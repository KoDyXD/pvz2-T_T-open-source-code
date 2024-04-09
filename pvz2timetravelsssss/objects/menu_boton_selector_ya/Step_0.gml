/// @description mover boton junto al menu de seleccion
if instance_exists(menu_selector_sems_mover)
{
	y = menu_selector.y+y_pos_selector;
}
else
{
	instance_destroy();
}