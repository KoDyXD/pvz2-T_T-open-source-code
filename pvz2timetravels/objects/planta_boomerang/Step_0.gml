/// @description detecciones
///linea de vision
if (collision_line(x+85,y-70,2490,y-70,zombi_tipo_general,false,true)) and !instance_exists(pr)
{
	if skeleton_animation_get() = "tranquilo" or skeleton_animation_get() = "parpadear"
	{
		if image_index >= 54
		{
			duracion = audio_play_sound(sound_boomerang_lanzar,1,0);
			skeleton_animation_set("atacar");
			image_index = 0;
		}
	}
}
else
{
	if skeleton_animation_get() = "atacar" and image_index  >= 28
	{
		skeleton_animation_set("tranquilo");
		image_index = 0;
	}
}

///morir si no tiene vida
if hp <= 0
{
	audio_play_sound(sound_comiendo_final, 2, 0);
	instance_destroy();
}

//recuperar proyectil
if skeleton_animation_get() = "atrapar" and image_index >= 29
{
	if (collision_line(x+85,y-70,2490,y-70,zombi_tipo_general,false,true))
	{
		skeleton_animation_set("atacar");
		duracion = audio_play_sound(sound_boomerang_lanzar,1,0);
		}
		else
		{
			skeleton_animation_set("tranquilo");
		}
	image_index = 0;
}

//parpadear
if skeleton_animation_get() = "tranquilo" or skeleton_animation_get() = "parpadear"
{
	if image_index >= 54 and alarm[1] = -1
	{
		alarm_set(1,random_range(150,300));
		skeleton_animation_set(choose("tranquilo","parpadear"));
		image_index = 0;
	}
}
//disparos
if skeleton_animation_get() = "atacar" and image_index > 20 and image_index <= 21 and alarm[0] = -1
{
	pr = instance_create_layer(x+40,y-100,"npcs", proj_boomerang);
	pr.pl = id;
	pr.sombra_y = y;
	alarm_set(0,10);
}