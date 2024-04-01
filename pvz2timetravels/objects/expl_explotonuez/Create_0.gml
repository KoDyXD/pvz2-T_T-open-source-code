/// @description profundidad
depth = 1;
dano = 1800;
audio_play_sound(sound_bolos_explotar,5,0);
audio_play_sound(sound_expl_papapum,5,0);

skeleton_animation_set("explosion");
skeleton_skin_set("expl");

if !instance_exists(efect_camara_temblor) {instance_create_depth(0,0,0,efect_camara_temblor);}