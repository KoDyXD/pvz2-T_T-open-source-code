/// @description weas para que funcione
///cambiar frame de inicio
skeleton_animation_set("tranquilo/1");
skeleton_skin_set("cabeza/1");
image_speed = image_speed/1.3;

//congelar los camellos del grupo
congelar = false;
congelar2 = false;

//generar los camellos si es el camello madre
alarm_set(5,1);
generar = true;


vel = image_speed;

///rugir
alarm_set(1,irandom_range(500,2000));

///profundidad de zombis / evita que el zombi de arriba aparezca por encima del de abajo
depth = instance_depth_zombi(y);

//comenzar a caminar
if !instance_exists(camara)
{
	detener = false;
	skeleton_animation_set("caminar/1");
	image_index = 0;
}

sprite = ds_list_create();
skeleton_slot_list(sprite_index,sprite);
//caliza
caliza = "caminar/1";

//guardar la ids de los camellos
camellos[0] = id;
quieto = false;
quieto2 = false;
camel = true;

idk = 0;