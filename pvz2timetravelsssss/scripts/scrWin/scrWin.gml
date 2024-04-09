// Script assets have changed for v2.3.0 see
if instance_exists(nivel_debug_xd) and !instance_exists(camara) and !instance_exists(menu_selector) and !instance_exists(nivel_ready_set_plant) and !instance_exists(recom_sem_debug)
{
	nivel_debug_xd.oleada = 1000;
	instance_destroy(zombi_tipo_general);
	global.xz = 1740;
	global.yz = 1000;
	nivel_debug_xd.alarm[0] = -1;
	nivel_debug_xd.alarm[1] = -1;
	nivel_debug_xd.alarm[2] = -1;
	global.finalizado = true;
	nivel_debug_xd.recompensa = true;
}