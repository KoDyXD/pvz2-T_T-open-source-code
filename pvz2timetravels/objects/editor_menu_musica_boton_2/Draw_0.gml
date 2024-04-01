draw_self();
draw_sprite_ext(sprite_index,15,x,y,image_xscale,image_yscale,0,c_white,1);
draw_sprite_ext(sprite_index,14,x,y,image_xscale,image_yscale,0,c_white,1);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_outline_transformed(x,y-(124*image_yscale)/2-25,cual,1,1,c_white,c_black,image_xscale,image_yscale,0);

if click = true
{
	depth = -3;
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,room_width,room_height,0);
	draw_set_alpha(1);
}
else if depth = -3
{
	depth = -2;
}

if instance_exists(editor_menu_musica_boton_cerrar) and inst != noone
{
	draw_text_outline_transformed(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+160,"Elige la musica del nivel",1,1,c_white,c_black,1.75,1.75,0);
	if cantidad = 1
	{
		draw_sprite_ext(spr_menu_fondo,0,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,1.25,1,0,c_white,1);
	}
	if cantidad = 2
	{
		draw_sprite_ext(spr_menu_fondo,0,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,1.25,1.5,0,c_white,1);
	}
	if cantidad = 3
	{
		draw_sprite_ext(spr_menu_fondo,0,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,1.25,2,0,c_white,1);
	}
}