/// @description detecciones
//destruir si no tiene vida
if hp <= 0
{
	audio_play_sound(sound_comiendo_final, 1, 0);
	instance_destroy();
}
if alarm[2] == -1 and accion == "normal" and skeleton_animation_get() == "tranquilo"	//detectar al zombi
{
	if collision_rectangle(x-103,y-50,x+103,y-25,zombi_tipo_general,0,1)
	{
		accion = "nodetectar";
		skeleton_animation_set("acostar");
		audio_play_sound(sound_frijuelle_aplastar,5,0);
		image_index = 0;
	}
}

if skeleton_animation_get() == "acostar" and image_index >= 16	//acostarse para lanzar al zombi
{
	accion = "nodetectar";
	//alarm_set(3,5*60);	//tiempo maximo para atacar un zombi
	skeleton_animation_set("aplastado");
	image_index = 0;
}

if skeleton_animation_get() == "aplastado"	//lanzar al objetivo
{
	if !collision_rectangle(x-103,y-50,x+103,y-25,zombi_tipo_general,0,1)	//dejar de esperar zombis si no los detecta en el tiempo establecido
	{
		//accion = "normal";
		skeleton_animation_set("lanzar");
		image_index = 0;
	}
	
	if alarm[2] == -1 //atacar un zombi
	{
		if collision_rectangle(x-63,y-50,x+63,y-25,zombi_tipo_tierra,0,1)
		{
			var _inst = collision_rectangle(x-63,y-50,x+63,y-25,zombi_tipo_tierra,0,1);
			if instance_exists(_inst)
			{
					var _proj = instance_create_layer(_inst.x,_inst.y,"npcs",efect_zombi_lanzado);
					with(_inst)
					{
						other.sprite = sprite_index;
						other.anim = skeleton_animation_get();
						other.skin = skeleton_skin_get();
						other.frames = image_index;
						other.colors = image_blend;
						other.mantequilla = mantequilla;
					}
					_proj.mantequilla = mantequilla;
					_proj.x1 = _inst.x;
					_proj.y1 = _inst.y;
					_proj.sombra_y = _inst.y-15;
					_proj.zombi = _inst;
					_proj.pos_y = _inst.y;
					_proj.depth = _inst.depth;
					instance_deactivate_object(_inst);
					_proj.sprite = sprite;
					_proj.anim = anim;
					_proj.skin = skin;
					_proj.frames = frames;
					_proj.colors = colors;
					_proj.x = x;
					_proj.y = y;
					_inst.x = room_width;
					_inst.y = -50;
					sprite = noone;
					anim = noone;
					skin = noone;
					frames = noone;
					colors = noone;
					
					//accion = "normal";
					contador += 1;
					alarm_set(0,10);
					skeleton_animation_set("lanzar")
					audio_play_sound(sound_frijuelle_saltar,5,0);
					image_index = 0;
			}
		}
	}
}

if skeleton_animation_get() == "lanzar" and image_index >= 29
{
	if contador == 0
	{
			accion = "normal";
			skeleton_animation_set("tranquilo");
	}
	if contador > 0 and contador < 5
	{
		if collision_rectangle(x-103,y-50,x+103,y-25,zombi_tipo_general,0,1)
		{
			skeleton_animation_set("acostar");
			audio_play_sound(sound_frijuelle_aplastar,5,0);
		}
		else
		{
			accion = "normal";
			skeleton_animation_set("dormirse");
		}
	}
	if contador >= 5
	{
		accion = "normal";
		skeleton_animation_set("dormirse");
	}
	//alarm_set(3,-1);	//quitar tiempo de espera
	image_index = 0;
}

if skeleton_animation_get() == "dormirse" and image_index >= 35
{
	alarm_set(2,(contador*60)*2);	//tiempo durmiendo
	skeleton_animation_set("dormir");
	image_index = 0;
}

if skeleton_animation_get() == "dormir" and image_index >= 49 and alarm[2] == -1
{
	skeleton_animation_set("despertar");
	image_index = 0;
}

if skeleton_animation_get() == "despertar" and image_index >= 29
{
	skeleton_animation_set("tranquilo");
	image_index = 0;
}