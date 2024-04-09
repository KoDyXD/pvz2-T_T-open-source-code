/// @description Inserte aquí la descripción
if instance_exists(objetivo_cuales)
{
	if direccion = "derecha" and objetivo_cuales.cual < array_length(objetivo_cuales.frase)-1
	{
		draw_self();
	}
	if direccion = "izquierda" and objetivo_cuales.cual > 0
	{
		draw_self();
	}
}