/// @description partes del cuerpo
draw_sprite_ext(spr_npc_sombra,0,x,y-15,image_xscale,image_yscale,0,c_white,1);
if brillo > 0 {brillo -= 0.007;}
shader_set(shader_brillo);
shader_set_uniform_f(brillo_unif,brillo);
draw_self();
shader_reset();