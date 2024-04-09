/// @description dibujar texto
draw_set_alpha(intensidad);
draw_set_color(c_black);
draw_rectangle(0,0,display_get_gui_width(),display_get_gui_height(),false);
draw_set_alpha(1);

if alarm[0] > 0
{
	draw_set_alpha(intensidad2);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_font(fnt_menu_2);
	draw_text_outline_transformed(display_get_gui_width()/2,display_get_gui_height()/2,"KoDy presenta",5,5,c_white,c_black,1,1,0);
	draw_set_font(fnt_menu);
}
else
{
	draw_set_alpha(0.6);
	draw_rectangle(0,(display_get_gui_height()/2)-100,room_width,(display_get_gui_height()/2)+100,0);
	draw_sprite_ext(spr_menu_logo,0,display_get_gui_width()/2,display_get_gui_height()/2,tamano,tamano,0,c_white,1);
	draw_set_alpha(1);
}