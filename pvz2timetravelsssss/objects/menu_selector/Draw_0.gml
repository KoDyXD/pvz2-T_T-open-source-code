/// @description dibujar todo lo necesario
if !surface_exists(surface)
{
	surface = surface_create(room_width,room_height);	//crear la surface si se ha borrado
}

//SURFACE
surface_set_target(surface);	//activar la surface para dibujar en ella

draw_clear_alpha(c_black,0);

draw_sprite_ext(spr_menu_fondo,1,x+83,y+30,3.2,3.6,0,c_white,1);

gpu_set_colorwriteenable(1,1,1,0);	//desactivar unicamente el alpha

if instance_exists(selector_debug)	//dibujar semillas
{
	with(selector_debug)
	{
		if visible == false
		{
			if desbloquear == true	//saber si la planta esta desbloqueada o no
			{	
				draw_self();
				draw_sprite_ext(sprite_index,tipo,x,y,image_xscale,image_yscale,0,c_white,1);	
				draw_sprite_ext(sprite_index,6,x,y,image_xscale,image_yscale,0,c_white,1);	
	
				if usar == true	//la planta no esta bloqueada para su uso
				{
					draw_set_halign(fa_right);
					draw_set_valign(fa_middle);
					draw_text_outline(bbox_right-15,bbox_bottom-30,sol,2,4,c_white,c_black);
				}
				else	//la planta esta bloqueada para su uso
				{
					draw_sprite_ext(sprite_index,5,x,y,image_xscale,image_yscale,0,c_white,1);	
					draw_sprite_ext(sprite_index,30,x,y,image_xscale,image_yscale,0,c_white,1);
				}
			}
			else	//la planta no esta desbloqueadea
			{
				draw_sprite_ext(sprite_index,5,x,y,image_xscale,image_yscale,0,c_white,1);
			}

			if click == false and desbloquear == true {draw_sprite(sprite_index,5,x,y);}	//la planta esta seleccionada

			if place_meeting(x,y,obj_click) and global.mover_destruir == false and desbloquear == true	//dibujar un marco si toca el mouse
			{
				draw_sprite_ext(sprite_index,22,x,y,image_xscale,image_yscale,0,c_white,1);
			}
		}
	}
}

gpu_set_colorwriteenable(1,1,1,1);	//reactivar el canal alpha
surface_reset_target();	//regresar al surface por defecto
draw_surface(surface,0,0);	//dibujar el surface creado
//END SURFACE

draw_sprite_ext(spr_menu_fondo,2,x+83,y+30,3.2,3.6,0,c_white,1);
draw_sprite_ext(spr_almanaque_fondo,0,x+86,y-575,6.35,0.65,0,c_white,1);	//menu arriba

draw_sprite_part_ext(spr_menu_patio_almanaque,global.fondo,120,120,304,297,x-380,y-420,0.75,0.75,c_white,1);	//fondo de cesped de patio
draw_sprite(spr_menu_patio_almanaque,16,x-380,y-420);	//fondo de cesped de patio (bordes)

//nombre de la planta
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text_outline_transformed(x+83,y-505,global.name,3,4,c_white,c_black,1.5,1.5,0);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color($483D0C);
if is_string(global.texto) == false
{
	draw_text_ext(x-135,y-425,desc[global.texto],45,700);
}
else
{
	draw_text_ext(x-135,y-425,"No puedes usar esta planta en este nivel.",45,700);
}
draw_set_color(c_white);

//selectores guia
if global.mover_menu = false and global.mover_destruir = false
{
	var _y = camera_get_view_y(view_camera[0])+200;
	var _x = camera_get_view_x(view_camera[0])+150;
	
	for (var i = 0; i < global.semilla_cantidad_usable; ++i) {
		draw_sprite_ext(spr_semilleros_plantas,8,_x,_y+151*i,1,1,0,c_white,0.5);
	}
}