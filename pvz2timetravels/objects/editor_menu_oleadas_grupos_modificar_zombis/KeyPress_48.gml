/// @description Insert description here
if instance_exists(padre) and accion != "aplicar" and accion != "cancelar"
{
	if cual != "zombi" and cual != "tumba" and cual != "tumbas" and cual != "planta"
	{
		if padre.grupo_datos[array_valor] != "-"
		{
			if string_length(padre.grupo_datos[array_valor]) < 3
			{
				padre.grupo_datos[array_valor] += "0";
			}
		}
	}
}