/// @description Inserte aquí la descripción
//podadoras
instance_create_podar(1);

//controlar zombis de muestra
global.quietos = false;

///crear cinta transportadora
instance_create_layer(275, 1764, "hud", spawn_MG_egipto);

///generar primera oleada
alarm_set(0,600);

//pala y botones
instance_create_layer((camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]))-100,camera_get_view_y(view_camera[0])+100,"hud",menu_boton_pausar);

//destruir menu de seleccion
if instance_exists(menu_selector){instance_destroy(menu_selector);}