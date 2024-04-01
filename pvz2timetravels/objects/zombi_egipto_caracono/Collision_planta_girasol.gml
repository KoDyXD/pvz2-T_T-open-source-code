/// @description TEMPORAL detener zombi si choca contra un girasol

if place_meeting( x, y, planta_girasol)
{
velocidad = 0;
}
else
{
velocidad = choose( 0.3, 0.4);
}