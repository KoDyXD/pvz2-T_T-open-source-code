/// @description dibujar el menu
if click = true
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_alpha(0.75);
	draw_set_color(c_black);

	draw_rectangle(0,0,room_width,room_height,0);

	draw_set_alpha(1);
	draw_set_color(c_white);
	var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
	
	draw_sprite_ext(spr_menu_fondo,0,_x,_y,3.85,1.8,0,c_white,1);	//dibujar fondo
	
	draw_set_valign(fa_middle);
	draw_set_halign(fa_right);
	draw_text_outline_transformed(_x-305,_y-125,"Música",1,4,c_white,c_black,1.2,1.2,0);
	draw_text_outline_transformed(_x-305,_y-5,"Efectos",1,4,c_white,c_black,1.2,1.2,0);
	
	draw_sprite_ext(spr_menu_volumen_1,0,_x+452,_y-125,1,1,0,c_white,1);
	draw_sprite_ext(spr_menu_volumen_1,0,_x+452,_y-5,1,1,0,c_white,1);
	
	frame += 1;
	if frame > 218 {frame = 0;}
	draw_skeleton(spr_menu_pausa_anims,"cesped","girasol",frame,_x,_y-290,1,1,0,c_white,1);
	/*
	//decoracion
	draw_sprite_ext(spr_menu_pausa_deco,1,_x-200,_y-320,-0.9,0.9,0,c_white,1);	//cesped izq
	draw_sprite_ext(spr_menu_pausa_deco,1,_x+200,_y-320,0.9,0.9,0,c_white,1);	//cesped der
	draw_sprite_ext(spr_menu_pausa_deco,2,_x,_y-355,1,1,0,c_white,1);	//girasol
	draw_sprite_ext(spr_menu_pausa_deco,0,_x,_y-285,0.9,0.9,0,c_white,1);	//cesped central*/
}
draw_self();