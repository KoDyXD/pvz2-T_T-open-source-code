/// @description weas utiles para que funcione
///produccion solar
alarm_set(0,618);
producir = false;

//profundidad
skeleton_animation_set("tranquilo");
skeleton_skin_set("normal");
depth = instance_depth_plant(y);
image_index = irandom_range(0,6);