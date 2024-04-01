if instance_exists(padre)
{
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,room_width,room_height,0);
	draw_set_alpha(1);
	
	var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
	
	draw_sprite_ext(spr_menu_fondo,0,_x,_y,2.1,2.5,0,c_white,1);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_outline_transformed(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+107.5,"MUSICA DE VUELTACASETE DE NEON",1,1,c_white,c_black,1.75,1.75,0);
	
	if padre.grupo_datos[2] = "punk" {draw_sprite(spr_menu_boton,1,_x-125,_y-225);}else{draw_sprite(spr_menu_boton,0,_x-125,_y-225);}
	if padre.grupo_datos[2] = "pop" {draw_sprite(spr_menu_boton,1,_x+125,_y-225);}else{draw_sprite(spr_menu_boton,0,_x+125,_y-225);}
	if padre.grupo_datos[2] = "rap" {draw_sprite(spr_menu_boton,1,_x-125,_y-75);}else{draw_sprite(spr_menu_boton,0,_x-125,_y-75);}
	if padre.grupo_datos[2] = "8-bit" {draw_sprite(spr_menu_boton,1,_x+125,_y-75);}else{draw_sprite(spr_menu_boton,0,_x+125,_y-75);}
	if padre.grupo_datos[2] = "balada" {draw_sprite(spr_menu_boton,1,_x-125,_y+75);}else{draw_sprite(spr_menu_boton,0,_x-125,_y+75);}
	if padre.grupo_datos[2] = "metal" {draw_sprite(spr_menu_boton,1,_x+125,_y+75);}else{draw_sprite(spr_menu_boton,0,_x+125,_y+75);}
	if padre.grupo_datos[2] = "semillas" {draw_sprite(spr_menu_boton,1,_x,_y+225);}else{draw_sprite(spr_menu_boton,0,_x,_y+225);}
	
	draw_sprite(spr_menu_boton,0,_x-200,_y+420);	//boton de aplicar cambios
	if modo == "modificar" {draw_sprite(spr_menu_boton_3,0,_x,_y+420);}	//boton de eliminar grupo
	draw_sprite(spr_menu_boton_2,0,_x+200,_y+420);	//boton de cancelar cambios
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_outline(_x-125,_y-225,"Punk",1,1,c_white,c_black);
	draw_text_outline(_x+125,_y-225,"Pop",1,1,c_white,c_black);
	draw_text_outline(_x-125,_y-75,"Rap",1,1,c_white,c_black);
	draw_text_outline(_x+125,_y-75,"8-Bit",1,1,c_white,c_black);
	draw_text_outline(_x-125,_y+75,"Balada",1,1,c_white,c_black);
	draw_text_outline(_x+125,_y+75,"Metal",1,1,c_white,c_black);
	draw_text_outline(_x,_y+225,"Semillas",1,1,c_white,c_black);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	if modo == "modificar" {draw_text_outline(_x-200,_y+420,"Aplicar",1,1,c_white,c_black);}else{draw_text_outline(_x-200,_y+420,"Crear",1,1,c_white,c_black);}
	if modo == "modificar" {draw_text_outline(_x,_y+420,"Eliminar",1,1,c_white,c_black);}
	draw_text_outline(_x+200,_y+420,"Cancelar",1,1,c_white,c_black);
}