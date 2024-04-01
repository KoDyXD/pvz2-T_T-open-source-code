/// @description Insert description here
if instance_exists(nivel_debug_xd) and activar = true
{
	if nivel_debug_xd.oleada >= nivel_debug_xd.oleada_max
	{
		if soles < objetivo
		{
			marcador = 1;
			activar = false;
			global.perder = true;
			color = c_red;
		}
	}
}

if soles >= objetivo and activar = true
{
	marcador = 0;
	color = c_lime;
	activar = false;
}

if instance_exists(menu_perder)
{
	if soles < objetivo and activar = false {menu_perder.frase = "Yo...\nKomer...\nGirasolez...";}
	
	alpha -= 0.008;
	if alpha <= 0 {instance_destroy();}
}