/// @description profundidad
depth = instance_depth_expl(y);
dano = 900;
audio_play_sound(sound_cococanon_explotar,2,0);

skeleton_animation_set("expl bala");
skeleton_skin_set("explosion");

if !instance_exists(efect_camara_temblor) {instance_create_depth(0,0,0,efect_camara_temblor);}