/// @description Inserte aquí la descripción
image_speed = 0;
to = menu_almanaque_plantas;
depth = -8;
click = false;
to = obj_control_niveles_extras.zona;

if global.extra_almanaque = false
{
	instance_destroy();
}