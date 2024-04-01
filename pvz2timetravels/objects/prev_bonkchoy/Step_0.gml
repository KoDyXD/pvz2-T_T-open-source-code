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
#region anims de movimiento tranquilo
if sprite_index = spr_planta_bonkchoy_anims
{
	if image_xscale = 1
	{
		//vista hacia la derecha
		if skeleton_animation_get() = "tranquilo/der/3" and image_index >= 28
		{
			skeleton_animation_set(choose("tranquilo/izq/1","tranquilo/izq/2","tranquilo/izq/3"));
			image_index = 0;
		}
		if skeleton_animation_get() = "tranquilo/der/1" or skeleton_animation_get() = "tranquilo/der/2" and image_index >= 28
		{
			skeleton_animation_set(choose("tranquilo/der/1","tranquilo/der/2","tranquilo/der/3"));
			image_index = 0;
		}
		//vista hacia la izquierda
		if skeleton_animation_get() = "tranquilo/izq/3" and image_index >= 28
		{
			skeleton_animation_set(choose("tranquilo/der/1","tranquilo/der/2","tranquilo/der/3"));
			image_index = 0;
		}
		if skeleton_animation_get() = "tranquilo/izq/1" or skeleton_animation_get() = "tranquilo/izq/2" and image_index >= 28
		{
			skeleton_animation_set(choose("tranquilo/izq/1","tranquilo/izq/2","tranquilo/izq/3"));
			image_index = 0;
		}
	}
	if image_xscale = 1.7
	{
		//vista hacia la derecha
		if skeleton_animation_get() = "*1.7/der/3" and image_index >= 28
		{
			skeleton_animation_set(choose("*1.7/izq/1","*1.7/izq/2","*1.7/izq/3"));
			image_index = 0;
		}
		if skeleton_animation_get() = "*1.7/der/1" or skeleton_animation_get() = "*1.7/der/2" and image_index >= 28
		{
			skeleton_animation_set(choose("*1.7/der/1","*1.7/der/2","*1.7/der/3"));
			image_index = 0;
		}
		//vista hacia la izquierda
		if skeleton_animation_get() = "*1.7/izq/3" and image_index >= 28
		{
			skeleton_animation_set(choose("*1.7/der/1","*1.7/der/2","*1.7/der/3"));
			image_index = 0;
		}
		if skeleton_animation_get() = "*1.7/izq/1" or skeleton_animation_get() = "*1.7/izq/2" and image_index >= 28
		{
			skeleton_animation_set(choose("*1.7/izq/1","*1.7/izq/2","*1.7/izq/3"));
			image_index = 0;
		}
	}
}
#endregion