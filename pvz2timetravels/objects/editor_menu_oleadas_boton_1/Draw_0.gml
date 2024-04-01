draw_sprite_ext(spr_menu_fondo,0,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]),camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,1.5,0.75,0,c_white,1);
if click == true
{
	depth = -1;
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,room_width,room_height,0);
	draw_set_alpha(1);
}
else if depth = -1
{
	depth = 0;
}

draw_self();
draw_set_halign(fa_center);
draw_text_outline(x,y,"Oleadas",1,1,c_white,c_black);


var _cam_x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;

if click == true
{
	draw_sprite_ext(spr_menu_fondo,0,_cam_x,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2+125,4.3,2.2,0,c_white,1);
}
if instance_exists(editor_menu_oleadas_boton_2_1)
{
	draw_sprite_ext(spr_menu_fondo,0,_cam_x,camera_get_view_y(view_camera[0]),2.3,1.5,0,c_white,1);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_outline_trans_ext(_cam_x,camera_get_view_y(view_camera[0])+100,"Oleadas y banderas del nivel.",1,1,$68DCFD,c_black,45,450,1.5,1.5,0);
}