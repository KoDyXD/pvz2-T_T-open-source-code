if instance_exists(padre)
{
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,room_width,room_height,0);
	draw_set_alpha(1);
	
	var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;
	
	draw_sprite_ext(spr_menu_fondo,0,_x,_y,2.1,3,0,c_white,1);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_outline_transformed(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+95,"GENERADOR DE TUMBAS",1,1,c_white,c_black,1.75,1.75,0);
	
	draw_sprite(spr_editor_cantidad,0,_x+141,_y-375);
	draw_sprite(spr_editor_cantidad,0,_x+141,_y-225);
	draw_sprite(spr_editor_cantidad,0,_x+141,_y-75);
	draw_sprite(spr_editor_cantidad,0,_x+141,_y+75);
	draw_sprite(spr_editor_cantidad,0,_x+141,_y+225);
	draw_sprite(spr_editor_cantidad,0,_x+141,_y+375);
	
	draw_sprite(spr_menu_boton,0,_x-200,_y+515);	//boton de aplicar cambios
	if modo == "modificar" {draw_sprite(spr_menu_boton_3,0,_x,_y+515);}	//boton de eliminar grupo
	draw_sprite(spr_menu_boton_2,0,_x+200,_y+515);	//boton de cancelar cambios
	
	draw_set_halign(fa_left)
	draw_text_outline_trans_ext(_x-260,_y-375,"Casilla X Min:",1,1,$68DCFD,c_black,45,450,1.5,1.5,0);
	draw_text_outline_trans_ext(_x-260,_y-225,"Casilla Y Min:",1,1,$68DCFD,c_black,45,450,1.5,1.5,0);
	draw_text_outline_trans_ext(_x-260,_y-75,"Casilla X Max:",1,1,$68DCFD,c_black,45,450,1.5,1.5,0);
	draw_text_outline_trans_ext(_x-260,_y+75,"Casilla Y Max:",1,1,$68DCFD,c_black,45,450,1.5,1.5,0);
	//draw_text_outline_trans_ext(_x-260,_y+150,"Cantidad Min:",1,1,$68DCFD,c_black,45,450,1.5,1.5,0);
	draw_text_outline_trans_ext(_x-260,_y+225,"Cantidad Max:",1,1,$68DCFD,c_black,45,450,1.5,1.5,0);
	draw_text_outline_trans_ext(_x-260,_y+375,"Tumba:",1,1,$68DCFD,c_black,45,450,1.5,1.5,0);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text_outline(_x+141,_y-375,padre.grupo_datos[2],1,1,c_white,c_black);	//dibujar x
	draw_text_outline(_x+141,_y-225,padre.grupo_datos[3],1,1,c_white,c_black);	//dibujar y
	draw_text_outline(_x+141,_y-75,padre.grupo_datos[4],1,1,c_white,c_black);	//dibujar x
	draw_text_outline(_x+141,_y+75,padre.grupo_datos[5],1,1,c_white,c_black);	//dibujar y
	//draw_text_outline(_x+141,_y+225,padre.grupo_datos[6],1,1,c_white,c_black);		//dibujar c_min
	draw_text_outline(_x+141,_y+225,padre.grupo_datos[7],1,1,c_white,c_black);	//dibujar c_max
	draw_text_outline(_x+141,_y+375,padre.grupo_datos[8],1,1,c_white,c_black);	//dibujar zombi
	
	if modo == "modificar" {draw_text_outline(_x-200,_y+515,"Aplicar",1,1,c_white,c_black);}else{draw_text_outline(_x-200,_y+515,"Crear",1,1,c_white,c_black);}
	if modo == "modificar" {draw_text_outline(_x,_y+515,"Eliminar",1,1,c_white,c_black);}
	draw_text_outline(_x+200,_y+515,"Cancelar",1,1,c_white,c_black);
}