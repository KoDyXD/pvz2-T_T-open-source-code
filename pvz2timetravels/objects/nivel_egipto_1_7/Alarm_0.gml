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
	instance_create_zombis(-1,0,2,3,choose(zombi_egipto_anubis,zombi_egipto_basico));
}

if oleada = 4
{
	instance_create_zombis(0,0,1,3,zombi_egipto_caracono);
	instance_create_zombis(-1,1,0,1,zombi_egipto_anubis);
	instance_create_zombis(-1,5,0,1,zombi_egipto_anubis);
}

if oleada = 5
{
	instance_create_zombis(-1,3,1,1,zombi_egipto_explorador);
}

if oleada = 6
{
	instance_create_zombis(1,-2,1,3,zombi_egipto_caracubo);
	instance_create_zombis(0,2,1,1,zombi_egipto_caracono);
	instance_create_zombis(0,4,0,1,zombi_egipto_caracono);
}

if oleada = 7
{
	instance_create_zombis(1,0,1,2,zombi_egipto_anubis);
}

if oleada = 8 or oleada = 9
{
	instance_create_zombis(-1,0,2,3,zombi_egipto_basico);
	instance_create_zombis(0,0,1,1,zombi_egipto_caracono);
	instance_create_zombis(1,0,1,1,zombi_egipto_anubis);
}

if oleada = 10
{
	instance_create_zombis(1,1,1,1,zombi_egipto_anubis);
	instance_create_zombis(1,5,1,1,zombi_egipto_anubis);
	instance_create_zombis(1,0,2,2,zombi_egipto_basico);
	instance_create_zombis(2,0,1,3,zombi_egipto_caracono);
	instance_create_zombis(-1,-3,1,1,zombi_egipto_explorador);
	instance_create_zombis(-1,-5,1,1,zombi_egipto_explorador);
}

if oleada = 11 or oleada = 12
{
	instance_create_zombis(2,0,2,2,zombi_egipto_basico);
}

if oleada = 13
{
	instance_create_zombis(0,0,1,1,zombi_egipto_caracono);
	instance_create_zombis(-1,0,1,1,zombi_egipto_anubis);
}

if oleada >= 14 and oleada <= 17
{
	instance_create_zombis(1,0,1,1,zombi_egipto_basico);
	instance_create_zombis(-1,0,1,2,zombi_egipto_explorador);
	instance_create_zombis(1,0,0,1,choose(zombi_egipto_caracubo,zombi_egipto_caracono));
}

if oleada = 18
{
	instance_create_zombis(1,1,1,1,zombi_egipto_caracono);
	instance_create_zombis(1,5,1,1,zombi_egipto_caracono);
	instance_create_zombis(1,3,1,1,zombi_egipto_caracubo);
	instance_create_zombis(0,-3,2,2,zombi_egipto_anubis);
	instance_create_zombis(-1,0,1,1,zombi_egipto_explorador);
}

if oleada = 19
{
	instance_create_zombis(1,0,2,2,zombi_egipto_basico);
}

if oleada = 20
{
	instance_create_zombis(3,0,4,4,zombi_egipto_basico);
	instance_create_zombis(3,2,1,2,zombi_egipto_anubis);
	instance_create_zombis(2,3,0,1,zombi_egipto_anubis);
	instance_create_zombis(3,4,1,1,zombi_egipto_anubis);
	instance_create_zombis(2,5,0,1,zombi_egipto_anubis);
	instance_create_zombis(-1,-2,1,1,zombi_egipto_explorador);
	instance_create_zombis(-1,-3,1,1,zombi_egipto_explorador);
	instance_create_zombis(-1,0,2,2,zombi_egipto_explorador);
	instance_create_zombis(2,0,1,2,zombi_egipto_caracono);
	instance_create_zombis(2,0,2,2,zombi_egipto_caracubo);
}