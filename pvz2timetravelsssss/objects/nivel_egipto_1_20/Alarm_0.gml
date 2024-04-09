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

instance_create_tumbas(2,1,9,5,1,2,tumba_egipto);

if oleada = 2
{
	instance_create_zombis(-1,0,1,1,zombi_egipto_zombistein);
}
if oleada <= 3
{
	instance_create_zombis(0,0,8,12,zombi_egipto_basico);
}

if oleada = 4
{
	instance_create_tumbas(6,2,9,2,4,4,tumba_egipto);
	instance_create_tumbas(6,4,9,4,4,4,tumba_egipto);
	instance_create_zombis(-1,3,1,1,zombi_egipto_explorador);
	instance_create_zombis(-1,0,3,4,zombi_egipto_faraon);
	instance_create_zombis(0,0,5,6,zombi_egipto_caracono);
}

if oleada = 5
{
	instance_create_zombis(-1,0,10,13,zombi_egipto_anubis);
	instance_create_zombis(0,3,1,1,zombi_egipto_zombistein);
	instance_create_zombis(-1,0,1,1,zombi_egipto_zombistein);
}

if oleada = 6
{
	instance_create_tumba(9,1,tumba_egipto);
	instance_create_tumba(9,3,tumba_egipto);
	instance_create_tumba(9,5,tumba_egipto);
	instance_create_zombis(-1,1,1,1,zombi_egipto_explorador);
	instance_create_zombis(-1,3,1,1,zombi_egipto_explorador);
	instance_create_zombis(-1,5,1,1,zombi_egipto_explorador);
	instance_create_zombis(-1,2,1,1,zombi_egipto_camello);
	instance_create_zombis(-1,4,1,1,zombi_egipto_camello);
	instance_create_zombis(1,0,10,15,zombi_egipto_basico);
	instance_create_zombis(-1,0,1,1,zombi_egipto_zombistein);
}

if oleada = 7
{
	instance_create_zombis(-1,0,6,9,zombi_egipto_caracubo);
	instance_create_zombis(0,0,9,12,zombi_egipto_anubis);
}

if oleada = 8
{
	instance_create_zombis(-1,1,1,1,zombi_egipto_zombistein);
	instance_create_zombis(-1,5,1,1,zombi_egipto_zombistein);
	instance_create_zombis(0,0,15,17,zombi_egipto_basico);
	instance_create_zombis(0,0,3,5,zombi_egipto_explorador);
}

if oleada = 9
{
	alarm_set(3,1);
	instance_create_zombis(-1,0,5,6,zombi_egipto_faraon);
	instance_create_zombis(0,0,5,5,zombi_egipto_camello);
}

if oleada = 10
{
	instance_create_tumba(9,2,tumba_egipto);
	instance_create_tumba(9,4,tumba_egipto);
	instance_create_tumba(8,2,tumba_egipto);
	instance_create_tumba(8,4,tumba_egipto);
	instance_create_zombis(-1,-2,1,1,zombi_egipto_zombistein);
	instance_create_zombis(-1,-3,4,4,zombi_egipto_explorador);
}

if oleada = 11
{
	instance_create_zombis(-1,0,8,10,zombi_egipto_anubis);
	instance_create_zombis(-1,0,10,15,zombi_egipto_basico);
	instance_create_zombis(-1,0,1,1,zombi_egipto_zombistein);
}

if oleada = 12
{
	instance_create_zombis(-1,0,4,5,zombi_egipto_camello);
	instance_create_zombis(0,0,3,4,zombi_egipto_caracono);
	instance_create_zombis(0,0,3,5,zombi_egipto_explorador);
}

if oleada = 13
{
	instance_create_tumbas(4,1,9,5,7,10,tumba_egipto);
	instance_create_zombis(-1,0,1,1,zombi_egipto_zombistein);
	instance_create_zombis(-1,0,15,16,zombi_egipto_basico);
	instance_create_zombis(1,0,12,15,zombi_egipto_anubis);
}

if oleada = 14
{
	instance_create_zombis(-1,0,1,1,zombi_egipto_zombistein);
	instance_create_zombis(-1,0,3,5,zombi_egipto_caracono);
	instance_create_zombis(-1,0,1,2,zombi_egipto_explorador);
}

if oleada = 15
{
	alarm_set(3,1);
	instance_create_zombis(-1,0,2,2,zombi_egipto_zombistein);
	instance_create_zombis(-1,-2,2,2,zombi_egipto_zombistein);
	instance_create_zombis(-1,-3,2,2,zombi_egipto_zombistein);
	instance_create_zombis(0,0,7,10,zombi_egipto_explorador);
	instance_create_zombis(0,0,15,20,zombi_egipto_basico);
	instance_create_zombis(0,0,6,8,zombi_egipto_camello);
	instance_create_zombis(1,0,5,10,zombi_egipto_caracubo);
	instance_create_zombis(1,0,5,10,zombi_egipto_caracono);
	instance_create_zombis(0,0,7,10,zombi_egipto_anubis);
}