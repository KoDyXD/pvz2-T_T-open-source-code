/// @description weas utiles para que funcione
alarm_set(1,random_range(240,500));

///profundidad
skeleton_animation_set("tranquilo");
skeleton_skin_set("normal");
depth = instance_depth_plant(y);
image_index = irandom_range(0,6);

pos_x = x div 166;
pos_y = y div 186;

disparar = false;

alarm_set(2,10);