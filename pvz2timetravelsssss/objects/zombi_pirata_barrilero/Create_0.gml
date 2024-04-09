/// @description weas para que funcione
///cambiar frame de inicio
skeleton_skin_set("basico/entero");
skeleton_animation_set("basico/tranquilo barril");
image_index = irandom_range(0,30);

barril = instance_create_layer(x-165,y,"npcs",zombi_pirata_barril);
barril.depth = instance_depth_barril(y);
barril.inst = id;
quieto = false;
vel = image_speed;

///rugir
alarm_set(1,irandom_range(500,2000));

///profundidad de zombis / evita que el zombi de arriba aparezca por encima del de abajo
depth = instance_depth_zombi(y);

//comenzar a caminar
if !instance_exists(camara)
{
	detener = false;
	skeleton_animation_set("basico/caminar barril");
	image_index = irandom_range(0,20);
	barril.mover = true;
}