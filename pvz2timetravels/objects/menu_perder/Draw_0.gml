/// @description Inserte aquí la descripción
if alphacontrol = true and image_alpha > 0.5 {alpha += 0.009;}
draw_self();
draw_set_font(fnt_zombi);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_alpha(alpha);
draw_text_outline_transformed(x,y-600,frase,4,4,c_red,c_white,2,2,0);
draw_set_alpha(1);
draw_set_font(fnt_menu);