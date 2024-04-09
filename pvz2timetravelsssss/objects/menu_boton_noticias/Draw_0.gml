/// @description dibujar menu
if click = true
{
	if !surface_exists(surface)
	{
		surface = surface_create(room_width,room_height);	//crear la surface si se ha borrado
	}
	
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_rectangle(0,0,room_width,room_height,0);
	draw_set_alpha(1);
	
	draw_sprite_ext(spr_menu_fondo,0,room_width/2,room_height/2,2.75,3,0,c_white,1);
	
	draw_sprite_ext(spr_menu_fondo_almanaque,0,room_width/2,room_height/2,2.75,3,0,c_white,1);
	
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text_outline_transformed(room_width/2,220,"Notas de la Actualización",1,1,$68DCFD,c_black,1.75,1.75,0);
	
	//SURFACE
	surface_set_target(surface);	//activar la surface para dibujar en ella
	draw_clear_alpha(c_black,0);
	draw_sprite_ext(spr_menu_fondo_almanaque_gradientes,1,room_width/2,room_height/2,2.75,2.85,0,c_white,1);
	gpu_set_colorwriteenable(1,1,1,0);	//desactivar unicamente el alpha
	
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_set_color($0C3D48);
	draw_text_ext(room_width/2-317.5,menu_boton_noticias_mover.y,texto[cual],40,620);
	
	draw_set_color($483D0C);
	draw_text_ext_transformed(room_width/2-317.5,menu_boton_noticias_mover.y-30,fecha[cual],40,620,1.25,1.25,0);
	
	gpu_set_colorwriteenable(1,1,1,1);	//reactivar el canal alpha
	surface_reset_target();	//regresar al surface por defecto
	draw_surface(surface,0,0);	//dibujar el surface creado
	//END SURFACE

	draw_set_color(c_white);
	draw_sprite_ext(spr_menu_fondo_almanaque_gradientes,0,room_width/2,room_height/2,2.75,2.85,0,c_white,1);
	
}

draw_self();