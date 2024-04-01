/// @description mostrar si esta desbloqueada
if !instance_exists(nivel_debug_xd) and !instance_exists(menu_recom)
{
	if fuego = false
	{
		if nivel_id_last = true
		{
			image_blend = c_white;
		}
		else
		{
			image_blend = c_black;
			sprite_index = spr_planta_lanzaguisantes_anims;
			skeleton_animation_set("tranquilo");
			skeleton_skin_set("normal");
		}
	}
	else
	{
		if nivel_id_last = true {image_alpha = 1;}else{image_alpha = 0;}
	}
}