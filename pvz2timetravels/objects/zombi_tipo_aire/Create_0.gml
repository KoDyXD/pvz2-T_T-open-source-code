/// @description weas para que funcione
///cambiar frame de inicio
skeleton_skin_set("basico/entero");
skeleton_animation_set("basico/tranquilo");
image_index = irandom_range(0,30);

vel = image_speed;

///rugir
alarm_set(1,irandom_range(500,2000));

///profundidad de zombis / evita que el zombi de arriba aparezca por encima del de abajo
depth = instance_depth_zombi(y);

//comenzar a caminar
if !instance_exists(camara)
{
	detener = false;
	skeleton_animation_set("basico/caminar");
	image_index = irandom_range(0,20);
}

///ESTE ZOMBI ES EL PADRE DE TODOS LOS ZOMBIS EXCLUSIVAMENTE AEREOS