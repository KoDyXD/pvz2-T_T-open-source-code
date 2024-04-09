/// @description weas utiles para que funcione
///cambiar sprite a armada
alarm_set(0, 840);

///ataqueexplosivo
ataquelisto = false;

//evitar que pestanee al explotar
pestaneo = true;

///profundidad
skeleton_animation_set("plantar");
skeleton_skin_set("normal");
depth = instance_depth_plant(y);