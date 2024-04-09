/// @description weas utiles para que funcione
alarm_set(1,random_range(240,500));

///proyectil
pr = noone;

///profundidad
depth = instance_depth_plant(y);

duracion = noone;

skeleton_animation_set("tranquilo");
skeleton_skin_set("normal");
image_index = irandom_range(0,6);