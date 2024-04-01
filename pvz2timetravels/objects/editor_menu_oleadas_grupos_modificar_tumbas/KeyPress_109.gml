/// @description Insert description here
if cual != "zombi" and cual != "tumba" and cual != "tumbas" and cual != "planta" and accion != "aplicar" and accion != "cancelar"
{
	if string_length(padre.grupo_datos[array_valor]) == 0
	{
		padre.grupo_datos[array_valor] = "-";
	}
}