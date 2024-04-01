/// @description dibujar sprite de semilleros
if visible == true
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