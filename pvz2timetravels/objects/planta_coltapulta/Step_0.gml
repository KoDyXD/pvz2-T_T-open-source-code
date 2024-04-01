/// @description detecciones
///linea de vision
if (collision_line(x+85,y-70,2490,y-70,zombi_tipo_general,false,true))
{
	if skeleton_animation_get() = "tranquilo" or skeleton_animation_get() = "parpadear"
	{
		if image_index >= 44
		{
			skeleton_animation_set("disparo");
			image_index = 0;
		}
	}
}
else
{
	if skeleton_animation_get() = "disparo" and image_index >= 44
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
	if image_index >= 44 and alarm[1] = -1
	{
		alarm_set(1,random_range(150,300));
		skeleton_animation_set(choose("tranquilo","parpadear"));
		image_index = 0;
	}
}

//disparos
if skeleton_animation_get() = "disparo" and image_index >= 17 and image_index <= 18 and alarm[0] = -1
{
	var i = collision_line_first(x+70,y-70,2490,y-70,zombi_tipo_general,0,1);
	var ii = instance_create_layer(x+85,y-215,"npcs",proj_col);
	if instance_exists(i)
	{
		ii.x2 = i.x-35;
		ii.y2 = i.y-20;
		ii.idr = i;
	}
	ii.x1 = x+85;
	ii.y1 = y-215;
	ii.sombra_y = y;
	audio_play_sound(choose(sound_coltapulta_disparo_1,sound_coltapulta_disparo_2),1,0);
	alarm_set(0,10);
}