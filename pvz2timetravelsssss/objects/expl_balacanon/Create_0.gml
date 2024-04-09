/// @description profundidad
depth = instance_depth_expl(y);
dano = 500;

skeleton_animation_set("expl bala");
skeleton_skin_set("explosion");

if !instance_exists(efect_camara_temblor) {instance_create_depth(0,0,0,efect_camara_temblor);}