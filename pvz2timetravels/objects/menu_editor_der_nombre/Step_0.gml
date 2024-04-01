/// @description Insert description here
if instance_exists(padre)
{
	if global.editor_nivel_elegido == padre.cual
	{
		
	}
	else
	{
		instance_destroy();
	}
}
else
{
	instance_destroy();
}