/// @description
intensidad = 0;

texture_prefetch("menu_perfiles2");

instance_deactivate_all(true);

instance_activate_object(obj_control_niveles_extras);
instance_activate_object(obj_transicion);
instance_activate_object(musica_debug);
instance_activate_object(camara);
instance_activate_object(pat_decos);
instance_activate_object(pat_decos_extras);

camara.funcionar = false;

boton_1 = 0;