/// @description Inserte aquí la descripción
if brillo > 0 {brillo -= 0.006;}
shader_set(shader_brillo);
shader_set_uniform_f(brillo_unif,brillo);
draw_self();
shader_reset();

draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_outline_transformed(x,y+50,nombre,4,4,c_white,c_black,1.5,1.5,0);