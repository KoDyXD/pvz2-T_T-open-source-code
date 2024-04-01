/// @description
if instance_exists(editor_menu_pasarelas_boton_1)
{
	if editor_menu_pasarelas_boton_1.editor_pasarelas[pasarela-1] == 1
	{
		if image_index == 0 {image_index = 1;}
	}
	else
	{
		if image_index == 1 {image_index = 0;}
	}
}