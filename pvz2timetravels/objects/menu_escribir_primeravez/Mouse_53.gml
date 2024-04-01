/// @description seleccionar para abrir teclado virtual
if mouse_x >= room_width/2-200 and mouse_x <= room_width/2+200 and mouse_y >= 665-40 and mouse_y <= 665+40
{
	if os_type = os_android and keyboard_virtual_status() = false
	{
		keyboard_virtual_show(kbv_type_default,kbv_returnkey_done,kbv_autocapitalize_none,false);
	}
}