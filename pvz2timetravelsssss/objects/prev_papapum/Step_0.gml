/// @description parpadear
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
//pestanear
if skeleton_animation_get() = "tranquilo" or skeleton_animation_get() = "parpadear" and image_index >= 59
{
	skeleton_animation_set(choose("tranquilo","parpadear"));
	image_index = 0;
}