/// @description Inserte aquí la descripción
var i = global.nombre;
i = string_replace(i,".ini","");

draw_self();
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text_transformed(x,y,i,0.9*image_xscale,0.9*image_yscale,0);	//nombre

if click = true
{
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_rectangle(0,0,room_width,room_height,0);
	draw_set_alpha(1);
	
	var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
	
	draw_sprite_ext(spr_menu_fondo,0,_x,_y,5,3,0,c_white,1);	//fondo
	draw_sprite_ext(spr_menu_fondo_perfil_cual,0,_x-393.75,415.25,3.9,2.4,0,c_white,1);	//fondo de perfil 1
	draw_sprite_ext(spr_menu_fondo_perfil_cual,0,_x+393.75,415.25,3.9,2.4,0,c_white,1);	//fondo de perfil 2
	draw_sprite_ext(spr_menu_fondo_perfil_cual,0,_x-393.75,909.75,3.9,2.4,0,c_white,1);	//fondo de perfil 3
	draw_sprite_ext(spr_menu_fondo_perfil_cual,0,_x+393.75,909.75,3.9,2.4,0,c_white,1);	//fondo de perfil 4
}