/// @description Inserte aquí la descripción
var _x = display_get_gui_width();
var _y = display_get_gui_height();

draw_set_alpha(intensidad);
draw_set_color(c_black);
draw_rectangle(0,0,_x,_y,false);
draw_set_alpha(1);
draw_sprite_ext(pvz2_tt_april_fools,0,_x/2,_y/2,0.75,0.75,0,c_white,intensidad1);
draw_set_font(fnt_menu);
draw_set_valign(fa_top);
draw_set_halign(fa_center);
draw_set_alpha(intensidad1);

draw_text_outline_transformed(_x/2,_y/2+225,"NO 0.4",3,3,c_white,c_black,1.5,1.5,0);
draw_set_alpha(1);