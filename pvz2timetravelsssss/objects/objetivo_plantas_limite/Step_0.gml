/// @description Insert description here
if activar = true
{
	if cantidad > objetivo
	{
		marcador = 1;
		activar = false;
		global.perder = true;
		color = c_red;
	}
}

if instance_exists(menu_perder)
{
	if cantidad > objetivo and activar = false {menu_perder.frase = "Te...\nAcabazte...\nLas Zemillas...";}
	alpha -= 0.008;
	if alpha <= 0 {instance_destroy();}
}

cantidad = instance_number(oPlantaGeneral);