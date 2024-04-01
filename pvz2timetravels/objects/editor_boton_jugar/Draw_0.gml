/// @description Insert description here
if click == true
{
	var _x = camera_get_view_x(view_camera[0])+415
	
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,room_width,room_height,0);
	draw_set_alpha(1);
	
	draw_sprite_ext(spr_menu_fondo,0,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,1.75,2.5,0,c_white,1);
	
	draw_sprite_ext(spr_menu_fondo,0,_x,camera_get_view_y(view_camera[0])+500,2.5,2.75,0,c_white,1);
	draw_sprite_ext(spr_editor_advertencia,0,_x,camera_get_view_y(view_camera[0])+250,0.75,0.75,0,c_white,1);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_outline_transformed(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+130,"MENU DE PAUSA",1,1,c_white,c_black,1.75,1.75,0);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text_outline_trans_ext(_x,camera_get_view_y(view_camera[0])+500,"El modo editor está en una fase temprana de desarrollo.\nRecuerda que es posible encontrar bugs, crashes y la ausencia de varias mecánicas importantes.",1,1,$68DCFD,c_black,45,450,1.5,1.5,0);
}
draw_self();