/// @description Inserte aquí la descripción
if yy < 1 and alarm[0] = -1
{
	yy += 0.03;
}

if alarm[0] = -1
{
	image_alpha -= 0.02;
	y -= yy;
}

if image_alpha <= 0 {instance_destroy();}