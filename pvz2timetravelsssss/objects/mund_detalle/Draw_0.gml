/// @description Inserte aquí la descripción
//draw_self();
rot += 0.05;
draw_sprite_ext(sprite_index,image_index,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,image_xscale,image_yscale,0,c_white,1);
draw_sprite_ext(spr_menu_general_detalle,2,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,3.5,3.5,rot,c_white,1);