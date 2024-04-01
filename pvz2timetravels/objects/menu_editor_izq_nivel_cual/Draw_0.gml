/// @description dibujar hud del menu
if global.editor_nivel_elegido = cual
{
	var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
	var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;

	draw_sprite_ext(spr_menu_editor_nivel_nombre,0,_x+742.5,camera_get_view_y(view_camera[0])+380,4.5,1.5,0,c_white,1);	//fondo donde estara el nombre
	draw_sprite_ext(spr_editor_selector_patios,patio,_x+742.5,camera_get_view_y(view_camera[0])+750,1.75,1.75,0,c_white,1);	//dibujar patio
	draw_sprite_ext(spr_editor_selector_patios,14,_x+742.5,camera_get_view_y(view_camera[0])+750,1.75,1.75,0,c_white,1);	//dibujar borde del patio
	draw_sprite_ext(spr_menu_fondo_almanaque,1,_x+371.25,camera_get_view_y(view_camera[0])+1275,2,1.25,0,c_white,1);	//dibujar cuadro de oleadas
	draw_sprite_ext(spr_menu_fondo_almanaque,1,_x+1113.75,camera_get_view_y(view_camera[0])+1275,2,1.25,0,c_white,1);	//dibujar cuadro de banderas

	draw_set_font(fnt_menu_3);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_color(_x+742.5,camera_get_view_y(view_camera[0])+375,nivel_info[0],$003E48,$003E48,$003E48,$003E48,1);	//nombre del nivel
	
	draw_text_outline_transformed(_x+742.5,camera_get_view_y(view_camera[0])+625,"Patio:",2,2,c_white,c_black,0.7,0.7,0);
	
	draw_text_outline_transformed(_x+742.5,camera_get_view_y(view_camera[0])+1030,"Música: "+string(music_cual),2,2,$68DCFD,c_black,0.5,0.5,0);	//musica (titulo)

	draw_text_transformed_color(_x+371.25,camera_get_view_y(view_camera[0])+1275,"Oleadas:\n"+string(nivel_base[2]),0.65,0.65,0,$003E48,$003E48,$003E48,$003E48,1);	//cantidad de oleadas del nivel
	draw_text_transformed_color(_x+1113.75,camera_get_view_y(view_camera[0])+1275,"Banderas:\n"+string(nivel_base[3]),0.65,0.65,0,$003E48,$003E48,$003E48,$003E48,1);	//cantidad de oleadas del nivel
	
	draw_sprite_ext(spr_menu_boton_big,0,_x+342.5,_y+670,1.5,1.5,0,c_white,1);	//editar
	draw_sprite_ext(spr_menu_boton_big_2,0,_x+742.5,_y+670,1.5,1.5,0,c_white,1);	//jugar
	draw_sprite_ext(spr_menu_boton_big_3,0,_x+1142.5,_y+670,1.5,1.5,0,c_white,1);	//eliminar

	//textos de los botones
	draw_set_font(fnt_menu)
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_outline_transformed(_x+342.5,_y+670,"Editar",1,1,c_white,c_black,1.5,1.5,0);
	draw_text_outline_transformed(_x+742.5,_y+670,"Jugar",1,1,c_white,c_black,1.5,1.5,0);
	draw_text_outline_transformed(_x+1142.5,_y+670,"Eliminar",1,1,c_white,c_black,1.5,1.5,0);
}