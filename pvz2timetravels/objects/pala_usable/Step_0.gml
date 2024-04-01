/// @description weas para que funcione
//seguir al mouse
x = mouse_x;
y = mouse_y;

//deseleccionar pala
if global.pala = true
{
	pala_base.image_index = 0;
	pala_base.click = true;
	global.pala = false;
	instance_destroy();
}