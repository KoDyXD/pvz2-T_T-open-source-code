/// @description Insert description here
//shader del brillo
brillo = 0;
brillo_unif = shader_get_uniform(shader_brillo,"add");

//crear lista de proyectiles con los que choca
projs = ds_list_create();

skin = "barril/entero";
liberar = true;
mover = false;
inst = noone;
detener = false;
velocidad = 0;
hp = 1100;
image_speed = 0;

skeleton_skin_set("barril/entero");
skeleton_animation_set("barril/caminar");

image_index = irandom_range(0,100);