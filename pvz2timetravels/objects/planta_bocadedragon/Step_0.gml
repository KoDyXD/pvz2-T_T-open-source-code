/// @description detecciones
///linea de vision
if collision_rectangle(x,y-279,x+415,y+140,zombi_tipo_general,0,1) or collision_rectangle(x,y-279,x+415,y+140,zombi_pirata_loro,0,1)
{
	if skeleton_animation_get() == "tranquilo" or skeleton_animation_get() == "parpadear" or skeleton_animation_get() == "tranquilo 2"
	{
		if image_index >= 51
		{
			skeleton_animation_set("atacar");
			image_index = 0;
		}
	}
}
else
{
	if skeleton_animation_get() == "atacar" and image_index >= 54
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
if skeleton_animation_get() == "tranquilo" or skeleton_animation_get() == "parpadear" or skeleton_animation_get() == "tranquilo 2"
{
	if image_index >= 51 and alarm[1] == -1
	{
		alarm_set(1,random_range(150,300));
		skeleton_animation_set(choose("tranquilo","parpadear","tranquilo 2"));
		image_index = 0;
	}
}

//disparos
if skeleton_animation_get() == "atacar" and image_index > 35 and image_index <= 36 and alarm[0] == -1
{
	instance_create_layer(x+60,y-60,"npcs",proj_bocadedragon);
	audio_play_sound(choose(sound_bocadedragon_fuego_1, sound_bocadedragon_fuego_2,sound_bocadedragon_fuego_3),5,0);
	alarm_set(0,10);
}