if click = true
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
draw_set_valign(fa_middle);
draw_text_outline(x,y,"Patios",1,1,c_white,c_black);

if click = false
{
	image_index = 0;
}
else
{
	image_index = 1;
}
if instance_exists(editor_menu_patio_boton_2)
{
	draw_sprite_ext(spr_menu_fondo,0,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,4.9,2.9,0,c_white,1);
}