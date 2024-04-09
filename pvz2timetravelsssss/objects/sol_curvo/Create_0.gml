/// @description variables para que funcione el sol
depth = -7;
image_xscale = 0;
image_yscale = 0;
image_alpha = 0;

skeleton_animation_set("tranquilo");
skeleton_skin_set("amarillo");

///destruir soles si no se recoge
alarm_set(0, 500);

//valor del sol
valor = 50;

///hacer invisible los soles si no se recogen
desvanecer = false;

///hacer que los soles se recolecten una sola vez
click = true;

//velocidad al ir al contador
vel = choose(10, 12);

//animC
mov = true;
recorrer = 0;	//linea de tiempo
recorrido = 60*1.1;	//tiempo maximo para el recorrido
z = 0;	//eje z (sirve para mover el proyectil en curva correctamente)
x1 = ystart;	//punto x inicial
y1 = xstart;	//punto y inicial
x2 = xstart+irandom_range(-160,160);		//punto x objetivo
y2 = ystart+80;	//punto y objetivo

altura = irandom_range(166,186);	//altura maxima a la que llega el proyectil

//sol rojo
alarm_set(1,irandom_range(20,35));
inst = noone;
rojo = true;
rojo2 = false;

//ajustar tamano del sol
alarm_set(2,1);
tam_original = image_xscale;