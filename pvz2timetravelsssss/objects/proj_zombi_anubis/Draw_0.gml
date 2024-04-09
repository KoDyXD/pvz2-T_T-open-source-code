/// @description dibujarse
if mask_index != spr_vacio
{
	rotacion -= 7;

	draw_sprite_ext(spr_npc_sombra,0,x,sombra_y+y,0.4,0.4,0,c_white,1);

	draw_sprite_ext(sprite_index,image_index,x,y,1,1,rotacion,c_white,1);
}
else
{
	draw_self();
}