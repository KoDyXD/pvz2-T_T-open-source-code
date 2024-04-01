/// @description dibujarse
draw_sprite_ext(spr_npc_sombra_restos,0,x,y,0.5,0.45,0,c_white,1);

if rebotar > 0 {if rotar_dir = 0 {image_angle++;}else{image_angle--;}}

draw_sprite_ext(sprite_index,image_index,x,y,1,1,image_angle,c_white,image_alpha);