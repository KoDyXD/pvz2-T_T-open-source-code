/// @description TEMPORAL detener zombi si choca contra un papapum
if place_meeting( x, y, planta_papapum)
{
velocidad = 0;
}
else
{
velocidad = choose( 0.3, 0.4);
}