/// @description weas para que funcione
///cambiar frame de inicio
skeleton_skin_set("aband/entero");
skeleton_animation_set("aband/tranquilo");
image_index = irandom_range(0,30);
image_speed = image_speed*1.2;

vel = image_speed;

///rugir
alarm_set(1,irandom_range(500,2000));

///profundidad de zombis / evita que el zombi de arriba aparezca por encima del de abajo
depth = instance_depth_zombi(y);

//comenzar a caminar
if !instance_exists(camara)
{
	detener = false;
	skeleton_animation_set("aband/caminar");
	image_index = irandom_range(0,20);
}