/// @description partes del cuerpo
if brillo > 0 {brillo -= 0.007;}
shader_set(shader_brillo);
shader_set_uniform_f(brillo_unif,brillo);
if alarm[0] = -1 {draw_self();}
shader_reset();