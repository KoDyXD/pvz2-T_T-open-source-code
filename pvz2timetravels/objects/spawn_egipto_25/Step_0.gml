/// @description Inserte aquí la descripción
if global.semillas >= 8 {alarm_set(0,-1);}

if global.semillas <= 7 and generar = true and alarm[0] = -1 and instance_exists(menu_boton_pausar)
{
	alarm_set(0, random_range(100,125));
	generar = false;
}