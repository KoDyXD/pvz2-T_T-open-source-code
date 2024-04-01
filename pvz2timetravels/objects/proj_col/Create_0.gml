/// @description Inserte aquí la descripción
depth = instance_depth_proj(y+90);
dano = 20;

sombra_y = 0;	//posicion de la sombra
idr = noone;	//instancia objetivo
recorrer = 0;	//linea de tiempo
recorrido = 60;	//tiempo maximo para el recorrido
z = 0;	//eje z (sirve para mover el proyectil en curva correctamente)
x1 = ystart;	//punto x inicial
y1 = xstart;	//punto y inicial
x2 = 2530;		//punto x objetivo
y2 = ystart+180;	//punto y objetivo

rotacion = 0;	//funciona para rotar el sprite
altura = 558;	//altura maxima a la que llega el proyectil
mask_index = spr_vacio;