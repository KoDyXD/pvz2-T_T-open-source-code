/// @description
if instance_exists(editor_menu_cesped_boton_1)
{
	if editor_menu_cesped_boton_1.editor_cesped == cesped
	{
		if image_index == 0 {image_index = 1;}
	}
	else
	{
		if image_index == 1 {image_index = 0;}
	}
}