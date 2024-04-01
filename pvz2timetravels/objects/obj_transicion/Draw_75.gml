/// @description Inserte aquí la descripción
draw_set_alpha(intensidad);
draw_set_color(colors);
draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(),false);
draw_set_alpha(1);


var _x = display_get_gui_width()-100;
var _y = display_get_gui_height()-100;

if colors = c_white
{
	draw_set_font(fnt_menu);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_right);
	draw_set_color(c_black);
	draw_set_alpha(intensidad*intensidad);
	draw_text(_x-90,_y,"Cargando");
	draw_set_alpha(1);
	draw_skeleton(sprite_index,skeleton_animation_get(),skeleton_skin_get(),image_index,_x,_y,0.5,0.5,image_angle,image_blend,1);
}