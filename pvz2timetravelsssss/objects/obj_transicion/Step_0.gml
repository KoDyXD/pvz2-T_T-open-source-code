/// @description Inserte aquí la descripción
if destruir = false
{
	if intensidad < 1 {intensidad += cantidad;}
	if intensidad >= 1
	{
		if global.destino != noone {room_goto(global.destino);}
		switch(global.destino_sit)
		{
			case 0:
				//no hacer nada
			break;
			case 1:
				//crear la musica del menu
				if !instance_exists(musica_menu2) {audio_stop_all(); instance_create_depth(0,0,0, musica_menu2);}
			break;
			case 2:
				//detener todos los sonidos y musicas
				audio_stop_all();
			break;
			case 3:
				//reinicar el nivel
				audio_stop_all();
				room_restart();
			break
			case 4:
				//ir al nivel antes de completar el tutorial
				instance_destroy(musica_menu);
			break;
			case 5:
				//ir al nivel elegido
				audio_stop_all();
				instance_destroy(musica_menu);
				instance_destroy(musica_menu2);
			break;
			case 6:
				//cinematica inicial
				audio_stop_sound(music_menu_1);
				instance_destroy(musica_menu);
			break;
		}
	}
}
else
{
	if intensidad > 0 {intensidad += cantidad;}
}

if destruir = true and intensidad <= 0 {instance_destroy();}