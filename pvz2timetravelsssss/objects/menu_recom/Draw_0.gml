/// @description Inserte aquí la descripción
var _x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2;
var _y = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2;

draw_sprite_ext(spr_menu_fondo,0,_x,_y,3.55,2.35,0,c_white,1);
draw_sprite_ext(spr_almanaque_fondo,0,_x,_y-311.25,6.5,1,0,c_white,1);

draw_set_color($483D0C);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
var aj;
var ajustarspr;
var titulo;
if ajustar = false
{
	ajustarspr = 760;
	aj = 770;
	titulo = "¡Nivel completado!";
}
else
{
	ajustarspr = 860;
	aj = 770;
	titulo = "¡Tienes una nueva PLANTA!";
}

draw_sprite_part(spr_menu_patio_almanaque,fondo,116,90,312,367,_x-471.5,575);
draw_sprite(spr_menu_patio_almanaque,15,_x-471.5,575);
draw_text_ext(_x-146.8,_y-75,desc[cual],45,629.35);	//descripcion
if norep = false {instance_create_depth(_x-317.5,ajustarspr,0,prev); norep = true;}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_outline_transformed(_x,465,name[cual],2,4,c_white,c_black,image_xscale*1.5,image_yscale*1.5,0);	//nombre
draw_text_outline_transformed(_x,140,titulo,2,4,c_white,c_black,image_xscale*2,image_yscale*2,0);