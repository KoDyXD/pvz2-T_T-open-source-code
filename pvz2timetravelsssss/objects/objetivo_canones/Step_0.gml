/// @description acivar alarma de las balas
if instance_exists(nivel_debug_xd) and !instance_exists(recom_sem_debug) and instance_exists(oPlantaGeneral) and collision_rectangle(min_x*166,3*186,11*166,8*186,oPlantaGeneral,0,1) and !instance_exists(camara)
{
	if alarm[1] == -1
	{
		alarm_set(1,choose(180,240,320));
	}
}