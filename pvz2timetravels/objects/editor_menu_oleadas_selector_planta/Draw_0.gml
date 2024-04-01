if instance_exists(padre)
{
	draw_self();
	draw_sprite_ext(sprite_index,sprite,x,y,image_xscale,image_yscale,0,c_white,1);
	if padre.padre.grupo_datos[padre.array_valor] = cual
	{
		draw_sprite_ext(sprite_index,5,x,y,image_xscale,image_yscale,0,c_white,1);
	}
	if place_meeting(x,y,obj_click)
	{
		draw_sprite_ext(sprite_index,22,x,y,image_xscale,image_yscale,0,c_white,1);
	}
}