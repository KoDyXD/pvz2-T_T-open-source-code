/// @description ordenar cosas al comenzar el nivel
///generar soles
instance_create_layer(0,0,"hud", sol_spawn);

//podadoras
instance_create_podar(1);

///controlar zombis de muestra
global.quietos = false;

///generar primera oleada
alarm_set(0,900);

semilleros_crear([semillero_girasol,semillero_birasol,semillero_boomerang,semillero_hielaguisantes,semillero_bonkchoy,semillero_papapum],[-1,-1,-1,-1,-1,-1]);

//pala y botones
instance_create_layer((camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]))-100,camera_get_view_y(view_camera[0])+100,"hud",menu_boton_pausar);
if global.extra_pala = true {instance_create_layer((camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]))-289,camera_get_view_y(view_camera[0])+100,"hud",pala_base);}

//destruir menu de seleccion
if instance_exists(menu_selector){instance_destroy(menu_selector);}