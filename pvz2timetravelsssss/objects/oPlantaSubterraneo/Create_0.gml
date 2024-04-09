/// @description weas utiles para que funcione
/*
//shader del brillo
brillo = 0;
brillo_unif = shader_get_uniform(shader_brillo,"add");
pala = true;

alarm_set(1,random_range(240,500));

///vida
hp = 300;*/

///profundidad
skeleton_animation_set("tranquilo");
skeleton_skin_set("normal");
depth = instance_depth_plant(y);
image_index = irandom_range(0,6);

/*
Esta planta es la padre de todas las plantas que surgen del suelo o que estan debajo del suelo