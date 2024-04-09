/// @description Inserte aquí la descripción
image_speed = 0;
image_index = 0;
click2 = false;

depth = 1;

if instance_exists(menu_boton_pausar)
{
	depth = -8;
	
	image_xscale = image_xscale*1.28;
	image_yscale = image_yscale*1.28;
}