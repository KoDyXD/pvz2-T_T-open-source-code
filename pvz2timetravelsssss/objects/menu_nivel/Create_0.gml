/// @description Inserte aquí la descripción
seleccionar = false;
click = true;
click2 = false;
cambiar = true;

//shader del brillo
brillo = 0;
brillo_unif = shader_get_uniform(shader_brillo,"add");
bril = false;

skeleton_animation_set("normal");
skeleton_skin_set("blanco");

tipo = "normal";