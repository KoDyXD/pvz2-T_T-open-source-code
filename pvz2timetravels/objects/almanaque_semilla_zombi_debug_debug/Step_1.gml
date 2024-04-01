/// @description mover semillas
if instance_exists(menu_almanaque_izq_nivel_mover)
{
	y = menu_almanaque_izq_nivel_mover.y+ystart;
}

if semilla == false and image_xscale != 1.32
{
	image_xscale = 1.32;
	image_yscale = 1.32;
}