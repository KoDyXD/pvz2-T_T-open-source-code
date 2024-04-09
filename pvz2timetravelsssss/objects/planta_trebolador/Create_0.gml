/// @description weas utiles para que funcione
///cambiar sprite a movimiento de ojos o parpadeo
alarm_set(0,random_range(60,400));

///profundidad
depth = instance_depth_plant(y);
skeleton_animation_set("floralfury");
skeleton_skin_set("skin1");

audio_play_sound(choose(sound_trebolador_1,sound_trebolador_2),0,0);