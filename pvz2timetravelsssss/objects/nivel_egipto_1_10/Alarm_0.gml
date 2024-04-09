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

if oleada <= 4
{
	instance_create_zombis(-1,0,3,5,choose(zombi_egipto_basico,zombi_egipto_ra));
}

if oleada = 4
{
	instance_create_zombis(-1,0,4,4,zombi_egipto_caracono);
	instance_create_tumbas(6,2,8,4,5,5,tumba_egipto);
}

if oleada = 5
{
	instance_create_zombis(0,0,1,1,zombi_egipto_camello);
}

if oleada = 6
{
	instance_create_zombis(0,0,4,6,zombi_egipto_basico);
	instance_create_zombis(-1,0,5,5,zombi_egipto_explorador);
}

if oleada = 7
{
	instance_create_zombis(-1,0,5,5,zombi_egipto_ra);
	instance_create_zombis(0,0,2,2,zombi_egipto_caracubo);
	alarm_set(0,irandom_range(1000,1200));	//alarma para crear la siguiente oleada
}

if oleada = 8
{
	instance_create_tumbas(7,1,9,5,10,10,tumba_egipto);
	instance_create_zombis(0,0,5,5,zombi_egipto_basico);
	instance_create_zombis(1,-3,2,3,zombi_egipto_caracono);
	instance_create_zombis(1,-2,3,3,zombi_egipto_caracubo);
	instance_create_zombis(-1,0,3,3,zombi_egipto_explorador);
	instance_create_zombis(2,0,2,2,zombi_egipto_camello);
	instance_create_zombis(-1,0,1,1,zombi_egipto_zombistein);
	alarm_set(0,irandom_range(1200,1350));	//alarma para crear la siguiente oleada
}

if oleada >= 9 and oleada <= 15
{
	instance_create_zombis(-1,0,0,3,zombi_egipto_basico);
}

if oleada = 9
{
	instance_create_zombis(0,-2,1,1,zombi_egipto_caracono);
	instance_create_zombis(-1,-3,3,3,zombi_egipto_anubis);
}

if oleada = 10
{
	instance_create_zombis(0,-3,2,2,zombi_egipto_faraon);
	instance_create_zombis(1,-2,3,4,zombi_egipto_zombidito);
}

if oleada = 11
{
	instance_create_zombis(0,1,1,1,zombi_egipto_anubis);
	instance_create_zombis(0,2,1,1,zombi_egipto_anubis);
	instance_create_zombis(0,3,1,1,zombi_egipto_anubis);
	instance_create_zombis(0,4,1,1,zombi_egipto_anubis);
	instance_create_zombis(0,5,1,1,zombi_egipto_anubis);
}

if oleada = 12
{
	instance_create_zombis(0,0,1,3,zombi_egipto_caracono);
	instance_create_zombis(1,-5,2,2,zombi_egipto_faraon);
	instance_create_tumbas(5,1,8,4,4,6,tumba_egipto);
}

if oleada = 13
{
	instance_create_zombis(-1,0,2,2,zombi_egipto_explorador);
	instance_create_zombis(-1,0,5,5,zombi_egipto_zombidito);
}

if oleada >= 14 and oleada <= 15
{
	instance_create_zombis(-1,0,0,2,zombi_egipto_zombidito);
	instance_create_zombis(0,0,1,2,zombi_egipto_anubis);
	instance_create_zombis(2,0,0,1,zombi_egipto_faraon);
}

if oleada = 15
{
	alarm_set(0,irandom_range(1000,1200));	//alarma para crear la siguiente oleada
}

if oleada = 16
{
	instance_create_zombis(0,0,4,6,zombi_egipto_basico);
	instance_create_zombis(1,0,4,5,zombi_egipto_anubis);
	instance_create_zombis(2,-2,3,4,zombi_egipto_faraon);
	instance_create_zombis(-1,1,1,1,zombi_egipto_explorador);
	instance_create_zombis(-1,2,1,1,zombi_egipto_explorador);
	instance_create_zombis(-1,3,1,1,zombi_egipto_explorador);
	instance_create_zombis(-1,4,1,1,zombi_egipto_explorador);
	instance_create_zombis(-1,5,1,1,zombi_egipto_explorador);
	instance_create_zombis(-1,0,1,1,zombi_egipto_zombistein);
	instance_create_tumbas(7,1,9,5,15,15,tumba_egipto);
	alarm_set(0,irandom_range(1200,1350));	//alarma para crear la siguiente oleada
}

if oleada = 17
{
	instance_create_zombis(-1,0,3,4,zombi_egipto_basico);
	instance_create_zombis(0,0,4,4,zombi_egipto_zombidito);
}

if oleada = 18
{
	instance_create_zombis(-1,-2,3,5,zombi_egipto_anubis);
	instance_create_zombis(-1,-3,2,3,zombi_egipto_explorador);
}

if oleada = 19
{
	instance_create_zombis(0,-1,2,3,zombi_egipto_caracubo);
	instance_create_zombis(1,-5,2,2,zombi_egipto_faraon);
}

if oleada = 20
{
	instance_create_zombis(-1,2,1,1,zombi_egipto_camello);
	instance_create_zombis(-1,4,1,1,zombi_egipto_camello);
	instance_create_zombis(2,0,3,3,zombi_egipto_caracono);
	instance_create_tumbas(3,2,9,4,0,3,tumba_egipto);
}

if oleada = 21
{
	instance_create_zombis(0,0,5,7,zombi_egipto_zombidito);
}

if oleada = 22
{
	instance_create_zombis(-1,0,3,6,zombi_egipto_basico);
	instance_create_zombis(-1,0,2,3,zombi_egipto_ra);
}

if oleada = 23
{
	instance_create_zombis(-1,0,3,4,zombi_egipto_anubis);
}

if oleada = 24
{
	instance_create_tumbas(1,1,8,5,20,20,tumba_egipto);
	instance_create_zombis(4,0,6,6,zombi_egipto_zombidito);
	instance_create_zombis(-1,1,1,1,zombi_egipto_explorador);
	instance_create_zombis(-1,2,0,1,zombi_egipto_explorador);
	instance_create_zombis(-1,3,1,1,zombi_egipto_explorador);
	instance_create_zombis(-1,4,0,1,zombi_egipto_explorador);
	instance_create_zombis(-1,5,1,1,zombi_egipto_explorador);
	instance_create_zombis(0,0,5,5,zombi_egipto_basico);
	instance_create_zombis(0,-2,2,3,zombi_egipto_caracono);
	instance_create_zombis(0,-3,2,3,zombi_egipto_caracubo);
	instance_create_zombis(0,0,2,2,zombi_egipto_ra);
	instance_create_zombis(1,0,3,3,zombi_egipto_anubis);
	instance_create_zombis(2,2,1,1,zombi_egipto_faraon);
	instance_create_zombis(2,3,0,1,zombi_egipto_faraon);
	instance_create_zombis(2,4,1,1,zombi_egipto_faraon);
	instance_create_zombis(3,-5,1,1,zombi_egipto_zombistein);
	instance_create_zombis(3,-1,1,1,zombi_egipto_zombistein);
	instance_create_zombis(3,0,2,3,zombi_egipto_camello);
}