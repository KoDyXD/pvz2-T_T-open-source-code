/// @description poner alarma
if global.semillas >= 8 {alarm_set(0,-1);}

if global.semillas <= 7 and generar = true
{
	alarm_set(0, random_range(120, 300));
	generar = false;
}