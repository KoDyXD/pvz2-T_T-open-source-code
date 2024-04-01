///detenerse si choca con una planta
if place_meeting( x, y, planta_lanzaguisantes)
{
	velocidad = 0;
	alarm_set(1,60);
}
else
{
	velocidad = choose( 0.3, 0.4);
	alarm_set(1,0);
}