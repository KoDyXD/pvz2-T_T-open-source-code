/// @description dibujar sprite del semillero
///color del texto del costo dependiendo de si hay suficientes soles o no
var _col;
if global.soles >= sol {_col = c_white;}else{_col = c_red;}
draw_set_color(_col);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);

//que semillero es
draw_self();
draw_sprite(sprite_index,tipo,x,y);

//bandita del precio
if not instance_exists(spawn_UB_debug) {draw_sprite(sprite_index,6,x,y);}

//oscurecer semillero si esta seleccionada o si no hay suficientes soles
if disponible == false or global.soles < sol or disp_especial = false {draw_sprite(sprite_index,5,x,y);}

//animacion de recarga
if disponible == false
{
	if !instance_exists(guia)
	{
		if aumentar < 1 {aumentar += (1/recarga);}
		draw_sprite_ext(sprite_index,5,x,y,image_xscale,aumentar,image_angle,image_blend,image_alpha);
	}	
}
else
{
	aumentar = 0;
}

//escribir su costo en soles
if !instance_exists(spawn_UB_debug) {draw_text_outline(bbox_right-15,bbox_bottom-30,sol,2,4,_col,c_black);}

if place_meeting(x,y,obj_click)
{
	draw_sprite_ext(sprite_index,22,x,y,image_xscale,image_yscale,0,c_white,1);
}