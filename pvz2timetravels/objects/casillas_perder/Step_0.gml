/// @description Inserte aquí la descripción
if global.perder = true
{
	if instance_exists(nivel_editor_0_1) and editor = false {editor = true;}
	intensidad += 0.01;
}
if intensidad >= 1
{
	instance_destroy(zombi_tipo_general);
	instance_destroy(oPlantaGeneral);
	instance_destroy(semillero_debug);
	instance_destroy(guia_debug);
	instance_destroy(pala_base);
	instance_destroy(pala_usable);
	instance_destroy(spawn_UB_debug);
	instance_destroy(sol_spawn);
	instance_destroy(menu_regresar);
	instance_destroy(recom_sem_lanzaguisantes);
}

if global.perder = true and control = true
{
	alarm_set(0,15);
	control = false;
}