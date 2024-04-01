/// @description Insert description here
if instance_exists(nivel_debug_xd) and activar = true and !instance_exists(recom_sem_debug)
{
	if soles < 0
	{
		marcador = 1;
		activar = false;
		global.perder = true;
		color = c_red;
	}
}

if instance_exists(menu_perder)
{
	if soles < objetivo and activar = false {menu_perder.frase = "No...\nMaz...\nZoles...";}
	
	alpha -= 0.008;
	if alpha <= 0 {instance_destroy();}
}