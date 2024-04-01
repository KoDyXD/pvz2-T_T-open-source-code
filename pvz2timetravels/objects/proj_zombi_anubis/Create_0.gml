/// @description Insert description here
skeleton_animation_set("basico/proj");
skeleton_skin_set("basico/hueso");

inst = noone;	//el zombi anubis del que se genero

sombra_y = 0;	//posicion de la sombra
recorrer = 0;	//linea de tiempo
recorrido = irandom_range(80,95);	//tiempo maximo para el recorrido
z = 0;	//eje z (sirve para mover el proyectil en curva correctamente)
x1 = ystart;	//punto x inicial
y1 = xstart;	//punto y inicial
x2 = 0;	//punto x objetivo
y2 = 0;	//punto y objetivo

rotacion = irandom_range(0,180);	//funciona para rotar el sprite
altura = irandom_range(275,325);	//altura maxima a la que llega el proyectil