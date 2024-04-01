if instance_exists(editor_menu_oleadas_boton_grupos_cerrar)
{
	if editor_menu_oleadas_boton_grupos_cerrar.padre = id
	{
		draw_set_color(c_black);
		draw_set_alpha(0.5);
		draw_rectangle(0,0,room_width,room_height,0);
		draw_set_alpha(1);
	}
}

draw_self();

if masiva == true {draw_sprite_ext(spr_editor_boton_oleadas_identificar_masiva,0,x,y,image_xscale,image_yscale,0,c_white,1);}

if !instance_exists(editor_menu_oleadas_boton_grupos_cerrar)
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_outline_transformed(x,y,string(cual),1,1,c_white,c_black,image_xscale,image_yscale,0);
}

if agrandar == true and !instance_exists(editor_menu_oleadas_boton_grupos_cerrar) and !instance_exists(editor_menu_oleadas_boton_3_1)
{
	depth = -3;
	draw_sprite(spr_editor_boton_oleadas_grupos_cantidad,0,x,bbox_top-100);
	
	draw_set_color($003E48);
	draw_text_ext(x,bbox_top-100,"Grupos creados:\n"+string(array_length(oleadas)-1),50,300);
}
else if depth != -2
{
	depth = -2;
}

if instance_exists(editor_menu_oleadas_boton_grupos_cerrar)
{
	if editor_menu_oleadas_boton_grupos_cerrar.padre = id
	{
		draw_sprite_ext(spr_menu_fondo,0,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2+125,4.3,2.2,0,c_white,1);
		frame += 1;
		if frame > 158 {frame = 0;}
		draw_skeleton(spr_menu_pausa_anims,"zomboss","niebla",frame,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2-308,1,1,-0.1,c_white,1);
	
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		
		draw_text_outline_transformed(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+80,"GRUPOS DE LA OLEADA "+string(cual),1,1,c_white,c_black,1.75,1.75,0);
	}
}