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

if oleada <= 3
{
	instance_create_zombis(-1,0,1,1,zombi_egipto_zombidito);
}

if oleada = 4
{
	instance_create_zombis(1,0,1,1,zombi_egipto_ra);
	instance_create_zombis(-1,0,1,1,zombi_egipto_basico);
}

if oleada = 5
{
	instance_create_zombis(1,0,1,1,zombi_egipto_ra);
	instance_create_zombis(-1,0,1,2,zombi_egipto_zombidito);
	instance_create_zombis(2,5,1,1,zombi_egipto_camello);
}

if oleada >= 6 and oleada <= 8
{
	instance_create_zombis(1,0,0,1,zombi_egipto_ra);
	instance_create_zombis(-1,0,1,1,choose(zombi_egipto_zombidito,zombi_egipto_basico));
	instance_create_zombis(1,0,0,1,zombi_egipto_caracono);
}

if oleada = 9
{
	instance_create_zombis(-1,4,0,3,zombi_egipto_basico);
	instance_create_zombis(1,0,1,3,zombi_egipto_ra);
	instance_create_zombis(1,1,1,1,zombi_egipto_caracubo);
	instance_create_zombis(3,5,1,1,zombi_egipto_camello);
}

if oleada = 10
{
	instance_create_zombis(2,0,1,2,zombi_egipto_ra);
	instance_create_zombis(2,5,0,1,zombi_egipto_caracubo);
	instance_create_zombis(-1,0,1,3,zombi_egipto_zombidito);
}

if oleada = 11
{
	instance_create_zombis(2,2,1,1,zombi_egipto_caracono);
	instance_create_zombis(1,0,1,3,zombi_egipto_ra);
}

//oleada masiva
if oleada = 12
{
	instance_create_zombis(-1,0,2,5,zombi_egipto_basico);
	instance_create_zombis(-1,0,3,5,zombi_egipto_zombidito);
	instance_create_zombis(1,0,2,2,zombi_egipto_caracono);
	instance_create_zombis(3,3,1,1,zombi_egipto_caracubo);
	instance_create_zombis(2,5,1,1,zombi_egipto_camello);
	instance_create_zombis(2,0,1,3,zombi_egipto_ra);
}