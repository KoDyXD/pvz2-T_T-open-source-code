/// @description weas para que funcione
//cambiar frame de inicio
skeleton_skin_set("normal/entero");
skeleton_animation_set("basico/tranquilo");
image_index = irandom_range(0,30);

///animaciones extras
accion = "nada";
columpio = 0;
cantidad = choose(2,3,4);

vel = image_speed;

///rugir
alarm_set(1,irandom_range(500,2000));

///profundidad de zombis / evita que el zombi de arriba aparezca por encima del de abajo
depth = instance_depth_zombi(y);

//comenzar a caminar
if !instance_exists(camara)
{
	accion = "columpiar";
	x = 2575;
	mask_index = spr_vacio;
	detener = true;
	skeleton_skin_set("normal/soga con zombi");
	skeleton_animation_set("basico/columpiar");
	image_index = 0;
	image_speed = 0;
	alarm_set(4,irandom_range(0,120));
}