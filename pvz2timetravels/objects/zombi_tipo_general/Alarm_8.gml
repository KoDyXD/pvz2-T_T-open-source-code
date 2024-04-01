/// @description hacer que el zombi vuelva a moverse
if estatico == true
{
	estatico = false;
	detener = false;
	image_speed = vel;
		for (var i = 0; i < 12; ++i) {
			if i != 7 and i != 3 and i != 8 and i != 9 and i != 10 and i != 11
			{
				alarm[i] = alarma_cual_tiempo[i];
			}
			alarma_cual_tiempo[i] = -1;
		}
}