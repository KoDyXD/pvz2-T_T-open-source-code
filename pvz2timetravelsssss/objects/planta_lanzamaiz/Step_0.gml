/// @description detecciones
///linea de vision
if (collision_line(x+85,y-70,2490,y-70,zombi_tipo_general,false,true))
{
	if skeleton_animation_get() == "tranquilo" or skeleton_animation_get() == "parpadear"
	{
		if image_index >= 34
		{
			var _cual = irandom_range(1,4);
			if _cual == 1
			{
				skeleton_animation_set("disparo2");
			}
			else
			{
				skeleton_animation_set("disparo");
			}
			image_index = 0;
		}
	}
	if skeleton_animation_get() == "disparo" or skeleton_animation_get() == "disparo2"	//elegir siguiente proyectil
	{
		if image_index >= 44
		{
			var _cual = irandom_range(1,4);
			if _cual == 1
			{
				skeleton_animation_set("disparo2");
			}
			else
			{
				skeleton_animation_set("disparo");
			}
			image_index = 0;
		}
	}
}
else if image_index >= 44
{
	if skeleton_animation_get() == "disparo" or skeleton_animation_get() == "disparo2"
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
if skeleton_animation_get() == "tranquilo" or skeleton_animation_get() == "parpadear"
{
	if image_index >= 34 and alarm[1] == -1
	{
		alarm_set(1,random_range(150,300));
		skeleton_animation_set(choose("tranquilo","parpadear"));
		image_index = 0;
	}
}

//disparar maiz
if skeleton_animation_get() == "disparo" and image_index >= 16 and image_index <= 17 and alarm[0] == -1
{
	var i = collision_line_first(x+70,y-70,2490,y-70,zombi_tipo_general,0,1);
	var ii = instance_create_layer(x-17.5,y-224,"npcs",proj_maiz);
	if instance_exists(i)
	{
		ii.x2 = i.x-35;
		ii.y2 = i.y-20;
		ii.idr = i;
	}
	ii.depth = instance_depth_proj(y-50);
	ii.x1 = x-17.5;
	ii.y1 = y-224;
	ii.sombra_y = y;
	audio_play_sound(choose(sound_coltapulta_disparo_1,sound_coltapulta_disparo_2),1,0);
	alarm_set(0,10);
}

//disparar mantequilla
if skeleton_animation_get() == "disparo2" and image_index >= 16 and image_index <= 17 and alarm[0] == -1
{
	var i = collision_line_first(x+70,y-70,2490,y-70,zombi_tipo_general,0,1);
	var ii = instance_create_layer(x+0.5,y-232,"npcs",proj_mantequilla);
	if instance_exists(i)
	{
		ii.x2 = i.x-35;
		ii.y2 = i.y-20;
		ii.idr = i;
	}
	ii.depth = instance_depth_proj(y-50);
	ii.x1 = x+0.5;
	ii.y1 = y-232;
	ii.sombra_y = y;
	audio_play_sound(choose(sound_coltapulta_disparo_1,sound_coltapulta_disparo_2),1,0);
	alarm_set(0,10);
}