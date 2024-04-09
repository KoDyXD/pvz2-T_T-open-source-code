/// @description Inserte aquí la descripción
draw_self();

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(fnt_menu);

draw_text_outline_transformed(x+80,y,valor,2,3,$38E3F8,c_black,1.85,1.85,0);

if click = true
{
	draw_sprite_ext(spr_menu_almanaque_stat_texto,0,x,y-200,2,0.85,0,c_white,1);
	
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_color($003E48);
	draw_text_ext_transformed(x,y-200,desc,45,400,1.4,1.4,0);
}