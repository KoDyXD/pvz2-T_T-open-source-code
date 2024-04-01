/// @description Insert description here
if !surface_exists(global.surface)
{
	global.surface = surface_create(room_width,room_height);	//crear la surface si se ha borrado
}

draw_sprite_ext(spr_menu_fondo,0,room_width/2,975,9,4.25,0,c_white,1);	//dibujar fondo normal
draw_sprite_ext(spr_almanaque_etiqueta,0,room_width/2,218,9,1.1,0,c_white,1);	//dibujar etiqueta donde estara el nombre de la room

surface_set_target(global.surface);	//activar la surface para dibujar en ella

draw_sprite_ext(spr_menu_fondo2,0,room_width/2-1459,250,4.6,5.55,0,c_white,1);	//dibujar el fondo oscuro

gpu_set_colorwriteenable(1,1,1,0);	//desactivar unicamente el alpha

if instance_exists(menu_editor_izq_nivel_cual)	//dibujar los botones de niveles creados
{
	with(menu_editor_izq_nivel_cual) {
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,image_blend,1);
		if global.editor_nivel_elegido = cual {draw_sprite_ext(spr_editor_menu_izq_seleccion,0,x,y,image_xscale,image_yscale,0,image_blend,1);}
		draw_set_font(fnt_menu_3);
		draw_set_halign(fa_left);
		draw_set_valign(fa_middle);
		draw_text_outline(x-650,y,string(cual_numb)+". "+string(nivel_info[0]),1,1,c_white,c_black);	//dibujar nombre del nivel
	}
}
if instance_exists(menu_editor_izq_nivel_crear)
{
	with(menu_editor_izq_nivel_crear) {
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,image_blend,1);
		draw_set_font(fnt_menu_3);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text_outline(x,y,"CREAR NIVEL",1,1,c_white,c_black);
	}
}
gpu_set_colorwriteenable(1,1,1,1);	//reactivar el canal alpha

surface_reset_target();	//regresar al surface por defecto

draw_surface(global.surface,0,0);	//dibujar el surface creado

draw_sprite_ext(spr_menu_fondo2,1,room_width/2-1459,250,4.6,5.55,0,c_white,1);	//dibujar barra del fondo oscuro

draw_set_font(fnt_menu_3);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text_outline_transformed(room_width/2,142,"Editor de niveles",2.5,2.5,$68DCFD,c_black,1,1,0);