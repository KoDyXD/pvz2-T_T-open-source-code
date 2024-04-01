/// @description destruir guia
if global.mouse = true
{
	with(inst)
	{
		inst = noone;
		restaurar = false;
		alarm_set(0,1);
	}
	instance_destroy();
}