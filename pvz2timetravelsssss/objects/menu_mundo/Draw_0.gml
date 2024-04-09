/// @description Inserte aquí la descripción
var _x = point_distance(x,room_height/2,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,room_height/2)/camera_get_view_width(view_camera[0])/2;
var _esc_1_3 = 1-_x*1.3;
var _esc_1_5 = 1.5-_x*1.5;

draw_set_color(c_black);
if brillo > 0 {brillo -= 0.006;}
shader_set(shader_brillo);
shader_set_uniform_f(brillo_unif,brillo);
draw_sprite_ext(sprite_index,image_index,x,y,_esc_1_3,_esc_1_3,0,image_blend,1);
shader_reset();

if seleccionar == false
{
	draw_sprite_ext(spr_zona_general_cerrado,0,x,y,_esc_1_3,_esc_1_3,0,c_white,1);
}

draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_outline_transformed(x,y+(125*_esc_1_5),nombre,2,4,c_white,c_black,_esc_1_5,_esc_1_5,0);