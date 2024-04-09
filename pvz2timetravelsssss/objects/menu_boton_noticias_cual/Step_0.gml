/// @description
switch(direccion)
{
	case "derecha":
		if menu_boton_noticias.cual >= array_length(menu_boton_noticias.texto)-1
		{
			visible = false
		}
		else
		{
			visible = true;
		}
	break;
	case "izquierda":
		if menu_boton_noticias.cual <= 0
		{
			visible = false
		}
		else
		{
			visible = true;
		}
	break;
}