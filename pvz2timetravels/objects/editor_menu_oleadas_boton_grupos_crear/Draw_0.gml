/// @description Insert description here
draw_self();

if menu == true
{
	depth = -5;
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,room_width,room_height,0);
	draw_set_alpha(1);
	
	//dibujar hud
	var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
	
	draw_sprite_ext(spr_menu_fondo,0,_x,_y,1.25,2.5,0,c_white,1);
	
	draw_sprite(spr_menu_boton,0,_x,_y-300);
	draw_sprite(spr_menu_boton,0,_x,_y-150);
	draw_sprite(spr_menu_boton,0,_x,_y);
	draw_sprite(spr_menu_boton,0,_x,_y+150);
	draw_sprite(spr_menu_boton,0,_x,_y+300);
	draw_sprite(spr_menu_boton_2,0,_x,_y+420);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_outline(_x,_y-300,"zombi",1,1,c_white,c_black);
	draw_text_outline(_x,_y-150,"planta",1,1,c_white,c_black);
	draw_text_outline(_x,_y,"tumba",1,1,c_white,c_black);
	draw_text_outline(_x,_y+150,"tumbas",1,1,c_white,c_black);
	draw_text_outline(_x,_y+300,"MVCN",1,1,c_white,c_black);
	
	draw_text_outline(_x,_y+420,"Cancelar",1,1,c_white,c_black);
}
else if depth = -5
{
	depth = -4;
}

if hijo != noone
{
	if image_index != 1 {image_index = 1;}
}
else if image_index != 0
{
	image_index = 0;
}