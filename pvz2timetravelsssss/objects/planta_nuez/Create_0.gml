/// @description weas utiles para que funcione
///cambiar sprite a movimiento de ojos o parpadeo
alarm_set(0,random_range(60,400));

///profundidad
depth = instance_depth_plant(y);
skeleton_animation_set("tranquilo");
skeleton_skin_set("normal");