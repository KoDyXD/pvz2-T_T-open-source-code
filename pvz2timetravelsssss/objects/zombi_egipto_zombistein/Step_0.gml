/// @description acciones que realizara el zombi
#region vida, morir y escudo
if escudo < 0 {hp += escudo; escudo = 0;}	//cambiar vida si el escudo es negativo
if skeleton_animation_get() = "basico/lanzar"	//cambiar apariencia del zombistein al lanzar el zombidito
{
	if image_index >= 49
	{
		if place_meeting(x,y,oPlantaVisible)
		{
			skeleton_animation_set("basico/comer");
			image_index = 0;
		}
		else
		{
			detener = false;
			skeleton_animation_set("basico/caminar");
			image_index = 0;
		}
	}
}
if zombidito = false and skeleton_skin_get() != "normal/dano"
{
	skeleton_skin_set("normal/dano");
}
//hacer que el zombi muera si no tiene vida
if hp <= 0
{
	if anim_nada = false
	{
		var i = instance_create_depth(x,y,depth,zombi_zombistein_morir);
		with(i)
		{
			if other.zombidito = false
			{
				skeleton_skin_set("normal/dano");
			}
		}
	}
	if anim_expl = false
	{
		var i = instance_create_layer(x-125,y-307,"npcs",efect_zombi_restos);
		with(i)
		{
			depth = instance_depth_proj(other.y-35);
			x1 = x;
			y1 = y;
			x2 = irandom_range(irandom_range(x-225,x-275),irandom_range(x+225,x+275));
			y2 = other.y-70;
			sombra_y = other.y-70;
			sprite_index = other.sprite_index;
			skeleton_skin_set("restos/cabeza");
		}
	}
	if anim_expl = true {instance_create_layer(x,y,"npcs",efect_zombi_zombistein_cenizas)}
	instance_destroy();
}
#endregion
#region detenerse y comer si choca con una planta
if estatico = false and skeleton_animation_get() != "basico/lanzar"
{
	if place_meeting(x,y,oPlantaVisible)
	{
		if detener = false
		{
			skeleton_animation_set("basico/comer");
			image_index = 0;
			alarm_set(1,-1);
			detener = true;
		}
	}
	else
	{
		if skeleton_animation_get() = "basico/caminar" and detener = true
		{
			detener = false;
		}
	}
}
#endregion
#region caminar y velocidad
if detener = true
{
	velocidad = 0;
	if estatico = true and image_speed != 0 {image_speed = 0;}
}
if skeleton_animation_get() = "basico/caminar" and detener = false
{
	velocidad = 0.3673*image_speed;
	if image_index > 29 and image_index <= 30 and alarm[0] = -1
	{
		if obj_control_niveles_extras.alarm[11] = -1 {audio_play_sound(choose(sound_zombi_garg_pisar_1,sound_zombi_garg_pisar_2,sound_zombi_garg_pisar_3,sound_zombi_garg_pisar_4),0,0); obj_control_niveles_extras.alarm[11] = 10;}
		alarm_set(0,10);
	}
	if image_index >= 59 and image_index <= 60 and alarm[0] = -1
	{
		if obj_control_niveles_extras.alarm[11] = -1 {audio_play_sound(choose(sound_zombi_garg_pisar_1,sound_zombi_garg_pisar_2,sound_zombi_garg_pisar_3,sound_zombi_garg_pisar_4),0,0); obj_control_niveles_extras.alarm[11] = 10;}
		alarm_set(0,10);
	}
}
x -= velocidad;
#endregion
#region lanzar zombidito
if estatico = false
{
	if hp <= 1800 and zombidito = true and x > 1675 and skeleton_animation_get() != "basico/lanzar"
	{
		if skeleton_animation_get() = "basico/caminar" and image_index >= 59 {skeleton_animation_set("basico/lanzar"); image_index = 0;}
		if skeleton_animation_get() = "basico/comer" and image_index >= 43 {skeleton_animation_set("basico/lanzar"); image_index = 0;}
	}

	if skeleton_animation_get() = "basico/lanzar"
	{
		detener = true;
		if image_index >= 25 and zombidito = true
		{
			var i = instance_create_layer(x+75,y-440,"npcs",proj_zombi_garg_imp);
			i.y2 = y;
			i.x1 = x+75;
			i.y1 = y-440;
			i.sombra_y = y;
			audio_play_sound(choose(sound_zombi_imp_lanzado_1,sound_zombi_imp_lanzado_2),5,0);
			zombidito = false;
		}
	}
}
#endregion
#region aplastar plantas
if skeleton_animation_get() = "basico/comer" and estatico = false
{
	if image_index >= 30 and image_index <= 31 and alarm[0] = -1
	{
		alarm_set(0,10);
		instance_create_layer(x-16,y-108,"npcs",proj_zombi_zombistein);
		audio_play_sound(sound_zombi_garg_aplastar,0,0);
	}
	if image_index >= 43 and !place_meeting(x,y,oPlantaVisible)
	{
		skeleton_animation_set("basico/caminar");
		image_index = 0;
		detener = true
	}
}
#endregion