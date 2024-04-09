/// @description detecciones
///linea de vision
if (collision_line(x+85,y-70,2490,y-70,zombi_tipo_general,false,true))
{
	if skeleton_animation_get() = "tranquilo" or skeleton_animation_get() = "parpadear"
	{
		if image_index >= 37
		{
			skeleton_animation_set("disparar");
			image_index = 0;
		}
	}
}
else
{
	if skeleton_animation_get() = "disparar" and image_index >= 44
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

//parpadear
if skeleton_animation_get() = "tranquilo" or skeleton_animation_get() = "parpadear"
{
	if image_index >= 37 and alarm[1] = -1
	{
		alarm_set(1,random_range(150,300));
		skeleton_animation_set(choose("tranquilo","parpadear"));
		image_index = 0;
	}
}

//disparos
if skeleton_animation_get() = "disparar" and image_index > 28 and image_index <= 29 and alarm[0] = -1
{
	var i = instance_create_layer(x+50,y-80,"npcs",proj_guisante);
	i.sombra_y = y;
	audio_play_sound(choose(sound_disparo_1, sound_disparo_2), 1, 0);
	alarm_set(0,10);
}