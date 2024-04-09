/// @description Inserte aquí la descripción
image_speed = 0;

sombra_y = 0;	//posicion de la sombra
recorrer = 0;	//linea de tiempo
recorrido = 60/1.5;	//tiempo maximo para el recorrido
z = 0;	//eje z (sirve para mover el proyectil en curva correctamente)
x1 = ystart;	//punto x inicial
y1 = xstart;	//punto y inicial
x2 = x+498;	//punto x objetivo
y2 = y;	//punto y objetivo

altura = 175;	//altura maxima a la que llega el proyectil
sprite = noone;
anim = noone;
skin = noone;
frames = noone;
colors = noone;
zombi = noone;
pos_y = 0;
mantequilla = false;
destruir = false;

alarm_set(0,1);

audio_play_sound(sound_zombi_roto,5,0);