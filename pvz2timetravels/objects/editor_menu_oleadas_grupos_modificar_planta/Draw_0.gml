if instance_exists(padre)
{
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,room_width,room_height,0);
	draw_set_alpha(1);
	
	var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
	
	draw_sprite_ext(spr_menu_fondo,0,_x,_y,2.1,1.75,0,c_white,1);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_outline_transformed(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+175,"GENERADOR DE PLANTA",1,1,c_white,c_black,1.75,1.75,0);
	
	draw_sprite(spr_editor_cantidad,0,_x+141,_y-150);
	draw_sprite(spr_editor_cantidad,0,_x+141,_y);
	draw_sprite(spr_editor_cantidad,0,_x+141,_y+150);
	
	draw_sprite(spr_menu_boton,0,_x-200,_y+285);	//boton de aplicar cambios
	if modo == "modificar" {draw_sprite(spr_menu_boton_3,0,_x,_y+285);}	//boton de eliminar grupo
	draw_sprite(spr_menu_boton_2,0,_x+200,_y+285);	//boton de cancelar cambios
	
	draw_set_halign(fa_left)
	draw_text_outline_trans_ext(_x-260,_y-150,"Casilla X:",1,1,$68DCFD,c_black,45,450,1.5,1.5,0);
	draw_text_outline_trans_ext(_x-260,_y,"Casilla Y:",1,1,$68DCFD,c_black,45,450,1.5,1.5,0);
	draw_text_outline_trans_ext(_x-260,_y+150,"Planta:",1,1,$68DCFD,c_black,45,450,1.5,1.5,0);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text_outline(_x+141,_y-150,padre.grupo_datos[2],1,1,c_white,c_black);	//dibujar x
	draw_text_outline(_x+141,_y,padre.grupo_datos[3],1,1,c_white,c_black);	//dibujar y
	draw_text_outline(_x+141,_y+150,padre.grupo_datos[4],1,1,c_white,c_black);	//dibujar zombi
	
	if modo == "modificar" {draw_text_outline(_x-200,_y+285,"Aplicar",1,1,c_white,c_black);}else{draw_text_outline(_x-200,_y+285,"Crear",1,1,c_white,c_black);}
	if modo == "modificar" {draw_text_outline(_x,_y+285,"Eliminar",1,1,c_white,c_black);}
	draw_text_outline(_x+200,_y+285,"Cancelar",1,1,c_white,c_black);
}