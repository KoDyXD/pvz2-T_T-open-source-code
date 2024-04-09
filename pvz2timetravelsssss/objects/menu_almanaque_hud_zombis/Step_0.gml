/// @description Inserte aquí la descripción
if instance_exists(zombi_tipo_general)
{
	if !instance_exists(zombi_egipto_zombistein) and !instance_exists(zombi_pirata_zombistein)
	{
		zombi_tipo_general.image_xscale = 1.6;
		zombi_tipo_general.image_yscale = 1.6;
	}
	else
	{
		zombi_tipo_general.image_xscale = 1.1;
		zombi_tipo_general.image_yscale = 1.1;
	}
	zombi_tipo_general.depth = -2;
}
obj_control_niveles_extras.alarm[10] = 50;