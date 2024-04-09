/// @description profundidad
depth = instance_depth_expl(y);
dano = 1800;
audio_play_sound(sound_expl_papapum,2,0);

skeleton_animation_set("explosion");
skeleton_skin_set("expl");

if !instance_exists(efect_camara_temblor) {instance_create_depth(0,0,0,efect_camara_temblor);}