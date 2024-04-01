/// @description dibujarse
if alpha <= 1 and alpha >= 0.25
{
	alpha = (-(z/altura))+1;
}
if alpha < 0.25 {alpha = 0.25;}
if alpha > 1 {alpha = 1;}

draw_sprite_ext(spr_npc_sombra,0,x,sombra_y,alpha,alpha,0,c_white,alpha);

draw_sprite_ext(sprite_index,image_index,x,y-z,1,1,image_angle,c_white,1);