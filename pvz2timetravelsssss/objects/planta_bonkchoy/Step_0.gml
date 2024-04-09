/// @description detecciones
#region destruir si no tiene vida
if hp <= 0
{
	audio_play_sound(sound_comiendo_final, 2, 0);
	instance_destroy();
}
#endregion
#region anims de movimiento tranquilo
//vista hacia la derecha
if skeleton_animation_get() = "tranquilo/der/3" and image_index >= 28
{
	skeleton_animation_set(choose("tranquilo/izq/1","tranquilo/izq/2","tranquilo/izq/3"));
	image_index = 0;
}
if skeleton_animation_get() = "tranquilo/der/1" or skeleton_animation_get() = "tranquilo/der/2" and image_index >= 28
{
	skeleton_animation_set(choose("tranquilo/der/1","tranquilo/der/2","tranquilo/der/3"));
	image_index = 0;
}
//vista hacia la izquierda
if skeleton_animation_get() = "tranquilo/izq/3" and image_index >= 28
{
	skeleton_animation_set(choose("tranquilo/der/1","tranquilo/der/2","tranquilo/der/3"));
	image_index = 0;
}
if skeleton_animation_get() = "tranquilo/izq/1" or skeleton_animation_get() = "tranquilo/izq/2" and image_index >= 28
{
	skeleton_animation_set(choose("tranquilo/izq/1","tranquilo/izq/2","tranquilo/izq/3"));
	image_index = 0;
}
#endregion
#region ataque de la planta
if collision_line(bbox_right-44,y-70,x+250,y-70,zombi_tipo_general,false,true)	//detectar zombis a la derecha
{
	if atacar = false
	{
		var i = collision_line_first(bbox_right-44,y-70,x+250,y-70,zombi_tipo_general,0,1);
		if instance_exists(i) {if i.hp <= 80 {fuerte = true;}}
		lado = false;
		atacar = true;
	}
}
if collision_line(bbox_left+45,y-70,x-250,y-70,zombi_tipo_general,false,true)	//detectar zombis a la izquierda
{
	if atacar = false
	{
		var i = collision_line_first(bbox_left+45,y-70,x-250,y-70,zombi_tipo_general,0,1);
		if instance_exists(i) {if i.hp <= 80 {fuerte = true;}}
		lado = true;
		atacar = true;
	}
}
if atacar = true
{
	if skeleton_animation_get() != "atacar/der/1" or skeleton_animation_get() != "atacar/izq/1"	//comenzar a atacar
	{
		if image_index >= 27
		{
			if fuerte = false
			{
				if lado = false {skeleton_animation_set("atacar/der/1");}else{skeleton_animation_set("atacar/izq/1");} image_index = 0;	//ataque normal
			}
			else
			{
				if lado = false {skeleton_animation_set("atacar/der/2");}else{skeleton_animation_set("atacar/izq/2");} fuerte = false; image_index = 0;	//ataque fuerte
			}
		}
	}
	if skeleton_animation_get() = "atacar/der/2" or skeleton_animation_get() = "atacar/izq/2" and cambiar = false {if image_index >= 14 {cambiar = true;}}	//dejar el ataque fuerte
	if cambiar = true and image_index >= 14	//cambiar la direccion del ataque si esta atacando
	{
		if lado = false
		{
			var i = collision_line_first(bbox_right-44,y-70,x+250,y-70,zombi_tipo_general,0,1);
			if instance_exists(i) {if i.hp <= 80 {fuerte = true;}}
		}
		else
		{
			var i = collision_line_first(bbox_left+45,y-70,x-250,y-70,zombi_tipo_general,0,1);
			if instance_exists(i) {if i.hp <= 80 {fuerte = true;}}
		}
		if fuerte = false
		{
			if lado = false {skeleton_animation_set("atacar/der/1");}else{skeleton_animation_set("atacar/izq/1");} image_index = 0;	//ataque normal
		}
		else
		{
			if lado = false {skeleton_animation_set("atacar/der/2");}else{skeleton_animation_set("atacar/izq/2");} fuerte = false; image_index = 0;	//ataque fuerte
		}
		cambiar = false;
	}
	if lado = false
	{
		if !collision_line(bbox_right-44,y-70,x+250,y-70,zombi_tipo_general,false,true) and collision_line(bbox_left+45,y-70,x-250,y-70,zombi_tipo_general,false,true)	//detectar zombis a la izquierda si esta atacando
		{
			var i = collision_line_first(bbox_left+45,y-70,x-250,y-70,zombi_tipo_general,0,1);
			if instance_exists(i) {if i.hp <= 80 {fuerte = true;}}
			cambiar = true; lado = true;
		}
	}
	else
	{
		if collision_line(bbox_right-44,y-70,x+250,y-70,zombi_tipo_general,false,true) and !collision_line(bbox_left+45,y-70,x-250,y-70,zombi_tipo_general,false,true)	//detectar zombis a la derecha si esta atacando
		{
			var i = collision_line_first(bbox_right-44,y-70,x+250,y-70,zombi_tipo_general,0,1);
			if instance_exists(i) {if i.hp <= 80 {fuerte = true;}}
			cambiar = true; lado = false;
		}
	}
	if !collision_line(bbox_right-44,y-70,x+250,y-70,zombi_tipo_general,false,true) and !collision_line(bbox_left+45,y-70,x-250,y-70,zombi_tipo_general,false,true)	//detectar si no hay ningun zombi
	{
		lado = false; atacar = false; fuerte = false;
	}
	if fuerte = true {cambiar = true; fuerte = false;}
}
else if image_index >= 14	//regresar a la animacion de tranquilo
{
	if skeleton_animation_get() = "atacar/der/1" or skeleton_animation_get() = "atacar/der/2" or skeleton_animation_get() = "atacar/izq/1" or skeleton_animation_get() = "atacar/izq/2"
	{
		atacar = false; fuerte = false; lado = false;
		skeleton_animation_set("tranquilo/der/1"); image_index = 0;
	}
}
#endregion
#region sonidos y proyectiles de la planta
if skeleton_animation_get() = "atacar/der/1" or skeleton_animation_get() = "atacar/izq/1"	//ataque normal
{
	if image_index >= 5 and image_index <= 6 and alarm[2] = -1	//sonido de ataque
	{
		alarm_set(2,10);
		audio_play_sound(sound_bonkchoy_golpe_1,10,0);
	}
	if image_index >= 8 and image_index <= 9 and alarm[0] = -1	//crear proyectil del golpe
	{
		if skeleton_animation_get() = "atacar/der/1"	//hacia la derecha
		{
			inst = instance_create_layer(x+19,y-70,"npcs",proj_bonkchoy);
			var i = collision_line_first(bbox_right-44,y-70,x+250,y-70,zombi_tipo_general,0,1);
		}
		if skeleton_animation_get() = "atacar/izq/1"	//hacia la izquierda
		{
			inst = instance_create_layer(x-268,y-70,"npcs",proj_bonkchoy);
			var i = collision_line_first(bbox_left+45,y-70,x-250,y-70,zombi_tipo_general,0,1);
		}
		if instance_exists(i) {inst.instz = i;}
		inst.instp = id;
		alarm_set(0,10);
	}
}
if skeleton_animation_get() = "atacar/der/2" or skeleton_animation_get() = "atacar/izq/2"	//ataque fuerte
{
	if image_index >= 7 and image_index <= 8 and alarm[2] = -1	//sonido del ataque
	{
		alarm_set(2,10);
		audio_play_sound(sound_bonkchoy_golpe_2,10,0);
	}
	if image_index >= 10 and image_index <= 11 and alarm[0] = -1	//crear proyectil del golpe
	{
		if skeleton_animation_get() = "atacar/der/2"	//hacia la derecha
		{
			inst = instance_create_layer(x+19,y-70,"npcs",proj_bonkchoy);
			var i = collision_line_first(bbox_right-44,y-70,x+250,y-70,zombi_tipo_general,0,1);
		}
		if skeleton_animation_get() = "atacar/izq/2"	//hacia la izquierda
		{
			inst = instance_create_layer(x-268,y-70,"npcs",proj_bonkchoy);
			var i = collision_line_first(bbox_left+45,y-70,x-250,y-70,zombi_tipo_general,0,1);
		}
		if instance_exists(i) {inst.instz = i;}
		inst.dano = 80;
		inst.instp = id;
		alarm_set(0,10);
		fuerte = false;
	}
}
#endregion