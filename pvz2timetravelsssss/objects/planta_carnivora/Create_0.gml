/// @description weas utiles para que funcione
///profundidad
skeleton_animation_set("tranquilo");
skeleton_skin_set("normal");
depth = instance_depth_plant(y);
image_index = irandom_range(0,6);

inst = noone;
comer = false;

//comer rapido
if (collision_line(x+70,y-70,x+250,y-70,zombi_tipo_general,false,true))
{
	skeleton_animation_set("atacar");
	image_index = 0;
}