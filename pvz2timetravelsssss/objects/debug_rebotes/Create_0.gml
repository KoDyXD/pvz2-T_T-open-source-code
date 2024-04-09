/// @description Inserte aquí la descripción
skeleton_skin_set("normal/entero");
skeleton_animation_set("normal/lanzado");

alpha = 0;	//valor de la opacidad y escala
sombra_y = 0;	//posicion de la sombra
recorrer = 0;	//linea de tiempo
recorrido = 60;	//tiempo maximo para el recorrido
z = 0;	//eje z (sirve para mover el proyectil en curva correctamente)
x1 = ystart;	//punto x inicial
y1 = xstart;	//punto y inicial
x2 = irandom_range(x-120,x-130);	//punto x objetivo
y2 = ystart-470;	//punto y objetivo

altura = 150;	//altura maxima a la que llega el proyectil
rebotar = 3;	//veces que rebotara el proyectil