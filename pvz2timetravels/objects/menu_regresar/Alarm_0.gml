/// @description Inserte aquí la descripción
if global.nivel_tutorial[5] = true
{
	if instance_exists(menu_boton_pausar)
	{
		if menu_boton_pausar.editor = false
		{
			global.destino = to;
			global.destino_sit = 1;
		}
		else
		{
			global.destino = menu_editor_general;
			global.destino_sit = 1;
		}
	}
	else
	{
		global.destino = to;
		global.destino_sit = 1;
	}
}
else
{
	to = menu_principal;
	global.destino = to;
	global.destino_sit = 2;
}