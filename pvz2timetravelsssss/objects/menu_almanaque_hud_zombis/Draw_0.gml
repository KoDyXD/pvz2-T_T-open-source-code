/// @description dibujar hud
if !surface_exists(surface)
{
	surface = surface_create(room_width,room_height);	//crear la surface si se ha borrado
}

draw_sprite_ext(spr_menu_fondo,0,room_width/2,975,9,4.25,0,c_white,1);
draw_sprite_ext(spr_almanaque_etiqueta,1,room_width/2,218,9,1.1,0,c_white,1);
draw_sprite_ext(spr_almanaque_fondo,1,room_width/2+739,275,5,1,0,c_white,1);

surface_set_target(surface);	//activar la surface para dibujar en ella
draw_sprite_ext(spr_menu_fondo2,0,room_width/2-1459,250,4.47,5.55,0,c_white,1);	//dibujar fondo escuro
gpu_set_colorwriteenable(1,1,1,0);	//desactivar unicamente el alpha

if instance_exists(almanaque_semilla_zombi_debug_debug)	//dibujar semillas
{
	with(almanaque_semilla_zombi_debug_debug)
	{
		if semilla = true
		{
			draw_self();
			draw_sprite_ext(sprite_index,tipo,x,y,image_xscale,image_yscale,0,c_white,1);

			if instance_exists(prev)
			{
				draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,0,c_white,1);
			}
		}
		else
		{
			draw_sprite_ext(sprite_index,1,x,y,image_xscale,image_yscale,0,c_white,1);
		}
		if place_meeting(x,y,obj_click) and semilla == true
		{
			draw_sprite_ext(sprite_index,17,x,y,image_xscale,image_yscale,0,c_white,1);
		}
	}
}

gpu_set_colorwriteenable(1,1,1,1);	//reactivar el canal alpha
surface_reset_target();	//regresar al surface por defecto
draw_surface(surface,0,0);	//dibujar el surface creado
draw_sprite_ext(spr_menu_fondo2,1,room_width/2-1459,250,4.47,5.55,0,c_white,1);	//dibujar barra del fondo escuro

draw_sprite_ext(spr_menu_fondo_almanaque,0,room_width/2+739,1303,5.55,3.145,0,c_white,1);
draw_sprite_ext(spr_almanaque_fondo_seccion,0,room_width/2+739,999,10.5,1.25,0,c_white,1);
draw_sprite_ext(spr_almanaque_fondo_seccion,1,room_width/2+739,1159,10.5,1.25,0,c_white,1);

draw_sprite_part(spr_menu_patio_almanaque,global.fondo,0,0,554,442,room_width/2+458,415);	//fondo de patio

draw_set_font(fnt_menu_3);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text_outline_transformed(room_width/2,142,"Sección de Zombis",2.5,2.5,$68DCFD,c_black,1,1,0);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_menu);
draw_set_color($003E48);
draw_text_ext_transformed(room_width/2+70,1246,desc[global.desc],47,890,1.5,1.5,0);