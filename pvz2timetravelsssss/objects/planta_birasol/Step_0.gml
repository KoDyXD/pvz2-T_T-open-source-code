/// @description detecciones
///destruir si no tiene vida
if hp <= 0
{
	audio_play_sound(sound_comiendo_final, 2, 0);
	instance_destroy();
}

//cambiar sprite
if producir = true and image_index >= 37 and !instance_exists(camara) and !instance_exists(nivel_ready_set_plant)
{
	skeleton_animation_set("producir");
	image_index = 0;
}

//producir soles
if skeleton_animation_get() = "producir"
{
	if producir = true
	{
		if image_index >= 13 and image_index <= 14 and alarm[2] = -1
		{
			var _x = irandom_range(21,41);
			alarm_set(2,10);
			var i = instance_create_layer(x-_x,y-80,"npcs",sol_curvo);
			i.x1 = x-_x;
			i.y1 = y-80;
		}
		if image_index >= 18 and image_index <= 19 and alarm[2] = -1
		{
			var _x = irandom_range(25,45);
			var i = instance_create_layer(x+_x,y-115,"npcs",sol_curvo);
			i.x1 = x+_x;
			i.y1 = y-115;
			producir = false;
		}
	}
	else
	{
		if image_index >= 35
		{
			skeleton_animation_set("tranquilo");
			image_index = 0;
			alarm_set(0,random_range(1365,1690));
		}
	}
}