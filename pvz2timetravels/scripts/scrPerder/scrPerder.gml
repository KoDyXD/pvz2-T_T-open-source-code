// Script assets have changed for v2.3.0 see
if instance_exists(nivel_debug_xd) and !instance_exists(camara) and !instance_exists(menu_selector) and !instance_exists(nivel_ready_set_plant) and !instance_exists(recom_sem_debug)
{
	instance_create_depth(750,1113,0,zombi_tipo_general);
}