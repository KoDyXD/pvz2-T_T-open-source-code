/// @description teclado en android
if os_type = os_android and keyboard_virtual_status() = true
{
	if string_length(keyboard_string) > 15
	{
	    keyboard_string = string_copy(keyboard_string,1,15);
	}
	combinacion = keyboard_string;
}