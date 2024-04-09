/// @description weas para que funcione
///cambiar frame de inicio
skeleton_skin_set("ataud/dano 0");
skeleton_animation_set("escudo/tranquilo");
image_index = irandom_range(0,30);
image_speed = image_speed/1.4;

anim_escudo_2 = true;

vel = image_speed;
c_vel = true;

///rugir
alarm_set(1,irandom_range(500,2000));

///profundidad de zombis / evita que el zombi de arriba aparezca por encima del de abajo
depth = instance_depth_zombi(y);

//comenzar a caminar
if !instance_exists(camara)
{
	detener = false;
	skeleton_animation_set("escudo/caminar");
	image_index = irandom_range(0,20);
}