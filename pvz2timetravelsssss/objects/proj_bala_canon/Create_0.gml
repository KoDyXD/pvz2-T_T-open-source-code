/// @description Inserte aquí la descripción
depth = instance_depth_proj(y+90);
dano = 1000;
objetivo = noone;	//que planta atacara

recorrer = 0;	//linea de tiempo
recorrido = 60;	//tiempo maximo para el recorrido
z = 0;	//eje z (sirve para mover el proyectil en curva correctamente)
x1 = xstart;	//punto x inicial
y1 = ystart;	//punto y inicial
x2 = xstart;		//punto x objetivo
y2 = ystart;	//punto y objetivo

rotacion = 0;	//funciona para rotar el sprite
altura = 558;	//altura maxima a la que llega el proyectil
mask_index = spr_vacio;