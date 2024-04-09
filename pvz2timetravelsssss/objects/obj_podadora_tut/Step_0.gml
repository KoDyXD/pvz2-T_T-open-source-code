/// @description Inserte aquí la descripción
if mover = true
{
	x += 12;
	if skeleton_animation_get() = "tranquilo" {skeleton_animation_set("podar1");}
}

if skeleton_animation_get() = "podar1" and image_index >= 9
{
	skeleton_animation_set("podar2");
}

if mask_index == spr_vacio
{
	if image_angle > -45
	{
		image_angle -= 5.5
	}
	else
	{
		instance_create_depth(x,(y div 186)*186+166,depth,efect_caer_agua);
		instance_destroy();
	}
}
else if collision_rectangle(bbox_left,bbox_top,bbox_right-25,bbox_bottom,casillas_no_pasarela,0,1)
{
	mask_index = spr_vacio;
}