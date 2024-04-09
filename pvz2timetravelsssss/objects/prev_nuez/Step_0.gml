/// @description cambiar sprite
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
if skeleton_animation_get() = "tranquilo" and alarm[0] = -1 {alarm_set(0,irandom_range(1,350));}
if skeleton_animation_get() = "parpadear" and image_index >= 24 {skeleton_animation_set("tranquilo");image_index = 0;}
if skeleton_animation_get() = "no sonreir" and image_index >= 39 {skeleton_animation_set("tranquilo");image_index = 0;}
if skeleton_animation_get() = "sonriendo" and image_index >= 39 {skeleton_animation_set("tranquilo");image_index = 0;}