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
	instance_create_tumbas(3,1,3,5,8,8,tumba_egipto);
	instance_create_tumbas(4,1,4,5,8,8,tumba_egipto);
	instance_create_zombis(-1,0,2,2,zombi_egipto_basico);
}
if oleada <= 3
{
	instance_create_zombis(0,0,6,8,zombi_egipto_anubis);
	instance_create_zombis(0,0,0,2,zombi_egipto_caracono);
}

if oleada = 4
{
	instance_create_zombis(-1,0,2,2,zombi_egipto_caracubo);
	instance_create_zombis(0,0,2,2,zombi_egipto_basico);
	instance_create_zombis(-1,0,1,2,zombi_egipto_camello);
}

if oleada = 5
{
	instance_create_tumbas(2,1,9,1,7,9,tumba_egipto);
	instance_create_tumbas(2,5,9,5,7,9,tumba_egipto);
	instance_create_tumbas(2,3,9,3,7,9,tumba_egipto);
	instance_create_zombis(0,-2,3,4,zombi_egipto_anubis);
	instance_create_zombis(-1,-3,3,4,zombi_egipto_caracubo);
}

if oleada = 6
{
	instance_create_zombis(0,-3,4,6,zombi_egipto_anubis);
	instance_create_zombis(-1,-5,3,3,zombi_egipto_caracono);
	instance_create_zombis(-1,-1,2,3,zombi_egipto_caracubo);
}

if oleada = 7
{
	instance_create_zombis(0,0,1,2,zombi_egipto_camello);
	instance_create_zombis(-1,0,7,8,zombi_egipto_basico);
}

if oleada = 8
{
	instance_create_zombis(-1,-2,5,5,zombi_egipto_anubis);
	instance_create_zombis(0,-3,2,2,zombi_egipto_camello);
	instance_create_zombis(1,0,5,5,zombi_egipto_caracubo);
}

if oleada = 9
{
	instance_create_zombis(-1,0,1,1,zombi_egipto_basico);
}

if oleada = 10
{
	instance_create_tumbas(2,1,7,5,15,20,tumba_egipto);
	instance_create_zombis(-1,1,1,1,zombi_egipto_camello);
	instance_create_zombis(-1,2,1,1,zombi_egipto_camello);
	instance_create_zombis(-1,3,1,1,zombi_egipto_camello);
	instance_create_zombis(-1,4,1,1,zombi_egipto_camello);
	instance_create_zombis(-1,5,1,1,zombi_egipto_camello);
}

if oleada = 11
{
	instance_create_zombis(-1,0,6,6,zombi_egipto_anubis);
	instance_create_zombis(-1,0,3,3,zombi_egipto_basico);
}

if oleada = 12
{
	instance_create_zombis(0,-2,3,3,zombi_egipto_caracubo);
	instance_create_zombis(0,-3,3,3,zombi_egipto_caracono);
	instance_create_zombis(-1,0,6,6,zombi_egipto_basico);
}

if oleada = 13 or oleada = 14
{
	instance_create_zombis(-1,0,5,8,zombi_egipto_basico);
	instance_create_zombis(0,0,1,2,zombi_egipto_anubis);
}

if oleada = 15
{
	instance_create_tumbas(2,1,9,5,10,15,tumba_egipto);
	alarm_set(3,1);
	instance_create_zombis(-1,1,1,1,zombi_egipto_camello);
	instance_create_zombis(-1,2,1,1,zombi_egipto_camello);
	instance_create_zombis(-1,3,1,1,zombi_egipto_camello);
	instance_create_zombis(-1,4,1,1,zombi_egipto_camello);
	instance_create_zombis(-1,5,1,1,zombi_egipto_camello);
	instance_create_zombis(-1,0,10,13,zombi_egipto_basico);
	instance_create_zombis(0,0,5,8,zombi_egipto_caracono);
	instance_create_zombis(0,0,5,8,zombi_egipto_caracubo);
	instance_create_zombis(1,0,13,15,zombi_egipto_anubis);
}