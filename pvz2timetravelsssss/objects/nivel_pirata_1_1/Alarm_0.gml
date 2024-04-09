/// @description oleadas
if oleada < oleada_max+1
{
	if oleada = 0 and !instance_exists(nivel_horda) {audio_play_sound(sound_oleada_1, 50, 0)};	//sonido de que ya viene la primera oleada
	music = true;	//permite que el nivel detecte si la oleada es con bandera para cambiar la musica
	oleada += 1;	//aumentar el valor de la oleada
	adelantado = true;	//permitir que la siguiente oleada se adelante si no hay mas zombis
	if menorar = false {menorar = true;}else{partes += limite/oleada_max+1;}	//permitir el avance de la barra de progreso
	alarm_set(0,irandom_range(720,1080));	//alarma para crear la siguiente oleada
}
if oleada = 1
{
	nombrexd = "Creiste que verias todos los zombis piratas?\nPues no! Solo a mí! Cañon zombidito!";
	
	instance_create_zombis(-1,1,5,5,zombi_pirata_canon);
	instance_create_zombis(-1,2,5,5,zombi_pirata_canon);
	instance_create_zombis(-1,3,5,5,zombi_pirata_canon);
	instance_create_zombis(-1,4,5,5,zombi_pirata_canon);
	instance_create_zombis(-1,5,5,5,zombi_pirata_canon);
}
