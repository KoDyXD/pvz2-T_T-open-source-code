/// @description TEMPORAL detener zombi si choca contra un nuez

if place_meeting( x, y, planta_nuez)
{
velocidad = 0;
}
else
{
velocidad = choose( 0.3, 0.4);
}