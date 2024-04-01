/// @description Insert description here
if instance_exists(padre) and accion != "aplicar" and accion != "cancelar"
{
	if cual != "zombi" and cual != "tumba" and cual != "tumbas" and cual != "planta"
	{
		if string_length(padre.grupo_datos[array_valor]) < 2 and padre.grupo_datos[array_valor] != "0"
		{
			padre.grupo_datos[array_valor] += "5";
		}
	}
}