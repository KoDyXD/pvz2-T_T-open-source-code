/// @description detecciones
//click para disparar
if !instance_exists(guia_debug) and !instance_exists(pala_usable)
{
	if collision_rectangle(pos_x*166+25,pos_y*186+25,pos_x*166+166-25,pos_y*186+186-25,obj_click,0,1)
	{
		if skeleton_animation_get() != "disparar" and alarm[2] == -1
		{
			if mouse_check_button_pressed(mb_left) {disparar = true;}
			if mouse_check_button_released(mb_left) and disparar = true
			{
				disparar = false;
				skeleton_animation_set("disparar");
				image_index = 0;
			}
		}
	}
	else if disparar = true
	{
		disparar = false;
	}
}
///morir si no tiene vida
if hp <= 0
{
	audio_play_sound(sound_comiendo_final, 2, 0);
	instance_destroy();
}

//anims extras
if (skeleton_animation_get() == "tranquilo" or skeleton_animation_get() == "parpadear" or skeleton_animation_get() == "jugar") and image_index >= 59
{
	alarm_set(1,random_range(150,300));
	skeleton_animation_set(choose("tranquilo","parpadear","jugar"));
	image_index = 0;
}

if skeleton_animation_get() == "dormir" and image_index >= 449
{
	skeleton_animation_set("despertar");
	image_index = 0;
}

if skeleton_animation_get() == "despertar" and image_index >= 19
{
	skeleton_animation_set("tranquilo");
	image_index = 0;
}

//disparos
if skeleton_animation_get() == "disparar"
{
	if image_index >= 17 and image_index <= 18 and alarm[0] = -1
	{
		instance_create_layer(x+35,y,"npcs",expl_cococanon_efect_1);
		var i = instance_create_layer(x+40,y-90,"npcs",proj_coco);
		i.sombra_y = y;
		audio_play_sound(sound_cococanon_disparar, 1, 0);
		alarm_set(0,10);
	}
	if image_index >= 37
	{
		skeleton_animation_set("dormir");
		image_index = 0;
		alarm_set(2,15*60);
	}
}