/// @description Inserte aquí la descripción
skeleton_animation_set("basico/idle");

//depth = instance_depth_proj(y+25);
image_speed = 0;
image_angle = irandom_range(-25,25);
rotar_dir = choose(0,1);	//direccion a la que rotara
rebote_div = random_range(1.8,2);	//controla que tanto bajara con cada rebote
sombra_y = 0;	//posicion de la sombra
recorrer = 0;	//linea de tiempo
recorrido = 60/rebote_div;	//tiempo maximo para el recorrido
z = 0;	//eje z (sirve para mover el proyectil en curva correctamente)
x1 = ystart;	//punto x inicial
y1 = xstart;	//punto y inicial
x2 = irandom_range(x-125,x+200);	//punto x objetivo
y2 = ystart-470;	//punto y objetivo

altura = irandom_range(65,85);	//altura maxima a la que llega el proyectil
rebotar = choose(2,3,4);	//veces que rebotara el proyectil

audio_play_sound(sound_zombi_roto,5,0);