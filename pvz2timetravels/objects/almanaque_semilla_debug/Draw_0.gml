/// @description Inserte aquí la descripción
if semilla == true
{
	draw_self();
	draw_sprite_ext(sprite_index,tipo,x,y,image_xscale,image_yscale,0,c_white,1);

	if instance_exists(prev)
	{
		draw_sprite_ext(sprite_index,5,x,y,image_xscale,image_yscale,0,c_white,1);
	}
}
else
{
	draw_sprite_ext(sprite_index,5,x,y,image_xscale,image_yscale,0,c_white,1);
}

if place_meeting(x,y,obj_click) and semilla == true
{
	draw_sprite_ext(sprite_index,22,x,y,image_xscale,image_yscale,0,c_white,1);
}