/// @description Inserte aquí la descripción
hp = 700;
projs = ds_list_create();

//shader del brillo
brillo = 0;
brillo_unif = shader_get_uniform(shader_brillo,"add");

image_speed = 0;
alarm_set(1,irandom_range(1,40));

//profundidad
depth = instance_depth_tumba(y);

///destruirse
alarm_set(2,1);

//comepiedras
inst = noone;

skeleton_animation_set("crear");
skeleton_skin_set("1");