/// @description weas utiles para que funcione
skeleton_animation_set("tranquilo/der/1");
skeleton_skin_set("normal");
image_index = irandom_range(0,6);

fuerte = false;
inst = noone;
lado = false;
cambiar = false;
atacar = false;

//profundidad
depth = instance_depth_plant(y);