/// @description weas utiles para el editor
//para comenzar a jugar
instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-100,camera_get_view_y(view_camera[0])+100,"hud",editor_boton_jugar);
//patios
instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2-150,camera_get_view_y(view_camera[0])+75,"hud",editor_menu_patio_boton_1);
//musica
instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2+150,camera_get_view_y(view_camera[0])+75,"hud",editor_menu_musica_boton_1);
//oleadas
instance_create_layer(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-100,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,"hud",editor_menu_oleadas_boton_1);

//extras
alarm_set(1,1);