/// @description eventos
depth = -8;
/*
sol = 0;	//costo en soles
planta = oPlantaGeneral;	//planta a crear
inst = noone;	//semilla madre
inst2 = noone;	//con esto evito que se plante mas de una vez*/
alarm_set(0,2);	//alarma que evita que la planta se deselecciona

skeleton_animation_set("tranquilo");
skeleton_skin_set("normal");
/*
mouse_grid_x = 0;
mouse_grid_y = 0;
/*IMPORTANTE

Este objeto es un padre, esto significa que todos los objetos hijos que tenga tendran los mismos eventos
a excepcion del create.
Si este objeto es eliminado todas las guias dejaran de funcionar*/