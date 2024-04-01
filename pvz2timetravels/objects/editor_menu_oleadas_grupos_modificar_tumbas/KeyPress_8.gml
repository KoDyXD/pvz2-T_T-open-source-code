/// @description Insert description here
if instance_exists(padre)
{
	if string_length(padre.grupo_datos[array_valor]) > 0
	{
		padre.grupo_datos[array_valor] = string_delete(padre.grupo_datos[array_valor],string_length(padre.grupo_datos[array_valor]),1);
	}
}