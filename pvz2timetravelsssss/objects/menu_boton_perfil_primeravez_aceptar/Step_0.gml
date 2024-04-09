/// @description reubicar boton por si acaso
if os_type = os_android
{
	if keyboard_virtual_status() = true
	{
		y = ystart-331.25;
	}
	else
	{
		y = ystart;
	}
}