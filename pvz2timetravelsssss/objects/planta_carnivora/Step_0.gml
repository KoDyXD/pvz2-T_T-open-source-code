/// @description detecciones
///linea de vision
if comer = false
{
	if (collision_line(bbox_left,y-70,x+250,y-70,zombi_tipo_general,false,true))
	{
		if skeleton_animation_get() = "tranquilo" and image_index >= 51
		{
			skeleton_animation_set("atacar");
			image_index = 0;
		}
		if skeleton_animation_get() = "tragar" and image_index >= 97
		{
			skeleton_animation_set("atacar");
			image_index = 0;
		}
	}
	else
	{
		if skeleton_animation_get() = "atacar" and image_index  >= 41
		{
			skeleton_animation_set("tranquilo");
			image_index = 0;
		}
	}
}
///morir si no tiene vida
if hp <= 0
{
	audio_play_sound(sound_comiendo_final, 2, 0);
	instance_destroy();
}

//disparos
if skeleton_animation_get() = "atacar"
{
	if image_index > 20 and image_index <= 21 and alarm[0] = -1
	{
		var i = collision_line_first(bbox_left,y-70,x+250,y-70,zombi_tipo_general,0,1);
		inst = instance_create_layer(bbox_left,y-70,"npcs",proj_carnivora);
		if instance_exists(i)
		{
			if i.hp > 0
			{
				inst.instz = i;
				inst.instp = id;
			}
			else
			{
				instance_destroy(inst);
			}
		}
		alarm_set(0,10);
	}
	if image_index >= 17 and image_index <= 18 and alarm[2] = -1	//sonidos
	{
		audio_play_sound(sound_carnivora_morder_1,10,0);
		alarm_set(2,15);
	}
}
//sonidos
if skeleton_animation_get() = "comer1" or skeleton_animation_get() = "comer2"
{
	if  image_index >= 7 and image_index <= 8 and alarm[2] = -1
	{
		audio_play_sound(choose(sound_carnivora_morder_2,sound_carnivora_morder_3,sound_carnivora_morder_4),10,0);
		alarm_set(2,10);
	}
}
if skeleton_animation_get() = "tragar"
{
	if image_index >= 30 and image_index <= 31 and alarm[2] = -1
	{
		audio_play_sound(sound_carnivora_tragar_1,10,0);
		alarm_set(2,15);
	}
	if image_index >= 54 and image_index <= 55 and alarm[2] = -1
	{
		audio_play_sound(choose(sound_carnivora_eructo_1,sound_carnivora_eructo_2,sound_carnivora_eructo_3),10,0);
		alarm_set(2,15);
	}
	if image_index >= 97
	{
		if (collision_line(bbox_left,y-70,x+250,y-70,zombi_tipo_general,false,true))
		{
			skeleton_animation_set("atacar");
			image_index = 0;
		}
		else
		{
			skeleton_animation_set("tranquilo");
			image_index = 0;
		}
		comer = false;
	}
}
