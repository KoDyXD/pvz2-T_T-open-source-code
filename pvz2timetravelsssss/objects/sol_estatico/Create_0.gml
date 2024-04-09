/// @description variables para que funcione el sol
depth = -7;
image_xscale = 0;
image_yscale = 0;
image_alpha = 0;

skeleton_animation_set("tranquilo");
skeleton_skin_set("amarillo");

///destruir soles si no se recoge
alarm_set(0, 1000);

//valor del sol
valor = 50;

///hacer invisible los soles si no se recogen
desvanecer = false;

///hacer que los soles se recolecten una sola vez
click = true;

//velocidad al ir al contador
vel = choose(10, 12);
mov = false;

//sol rojo
alarm_set(1,irandom_range(30,60))
inst = noone;
rojo = true;
rojo2 = false;

//ajustar tamano del sol
alarm_set(2,1);
tam_original = image_xscale;