/// @description acciones que realizara el zombi
#region vida, morir y escudo
if escudo < 0 {hp += escudo; escudo = 0;}	//cambiar vida si el escudo es negativo
if hp <= 100 and skeleton_skin_get() = "basico/entero" {skeleton_skin_set("basico/dano");}	//cambiar apariencia cuando tenga la mitad de vida
if hp <= 100 and anim_brazo = true and anim_expl = false
{
	var i = instance_create_layer(x+32.5,y-171.65,"npcs",efect_zombi_restos);
	with(i)
	{
		depth = instance_depth_proj(other.y-35);
		x1 = x;
		y1 = y;
		y2 = other.y-25;
		sombra_y = other.y-25;
		sprite_index = other.sprite_index;
		skeleton_skin_set("restos/brazo");
	}
	anim_brazo = false;
}
///hacer que el zombi muera si no tiene vida
if hp <= 0
{
	if anim_nada = false
	{
		var i = instance_place(x+45,y,casillas_no_pasarela);
		if (i != noone)
		{
			instance_create_layer(x,(y div 186)*186+166,"npcs",efect_caer_agua);
			instance_destroy();
		}
		else
		{
			var _mo = instance_create_depth(x,y,0,zombi_tut_morir);
			with(_mo)
			{
				sprite_index = other.sprite_index;
				depth = other.depth;
				skeleton_animation_set("basico/muerte");
				skeleton_skin_set("basico/muerto");
			}
			audio_play_sound(choose(sound_zombi_gaviota_morir_1,sound_zombi_gaviota_morir_2),5,0);
		}
	}
	if anim_expl = false
	{
		var i = instance_create_layer(x-1.55,y-72.4,"npcs",efect_zombi_restos);
		with(i)
		{
			depth = instance_depth_proj(other.y-35);
			x1 = x;
			y1 = y;
			y2 = other.y-35;
			sombra_y = other.y-35;
			sprite_index = other.sprite_index;
			skeleton_skin_set("restos/cabeza");
		}
	}
	if anim_expl = true {instance_create_layer(x,y,"npcs",efect_zombi_gaviotero_cenizas)}
	instance_destroy();
}
#endregion
#region detenerse y comer si choca con una planta
if estatico = false and accion == "volar"
{
	if place_meeting(x,y,oPlantaVisible)
	{
		var _planta = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,oPlantaVisible,0,1);
		if _planta.accion == "normal"// or _planta.accion == "seminormal"
		{
			if skeleton_animation_get() = "basico/caminar"
			{
				skeleton_animation_set("basico/comer");
				image_index = 0;
				alarm_set(0,45/image_speed);
				alarm_set(1,-1);
				detener = true;
			}
			if alarm[0] = -1 {instance_create_layer(x-11,y-106,"npcs",proj_zombixd); alarm_set(0,45/image_speed);}
		}
		if _planta.accion == "nodetectar"
		{
			if skeleton_animation_get() = "basico/comer"
			{
				skeleton_animation_set("basico/caminar");
				image_index = irandom_range(0,10);
				alarm_set(0,-1);
				alarm_set(1,irandom_range(500,2000));
				detener = false;
			}
		}
	}
	else if skeleton_animation_get() = "basico/comer"
	{
		skeleton_animation_set("basico/caminar");
		image_index = irandom_range(0,10);
		alarm_set(0,-1);
		alarm_set(1,irandom_range(500,2000));
		detener = false;
	}
}
#endregion
#region caminar
if skeleton_animation_get() = "basico/caminar" and detener = false and accion = "volar"
{
	velocidad = 0.7346*image_speed;
}
#endregion
#region velocidad del zombi
if detener = true
{
	velocidad = 0;
	if estatico = true and image_speed != 0 {image_speed = 0;}
}
x -= velocidad;
#endregion
#region efecto del trebolador
if instance_exists(proj_trebolador) and accion == "volar"
{
	accion = "retroceder";
	mask_index = spr_vacio;
}
if accion == "retroceder"
{
	velocidad -= 2.8;
	if x > camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])+160
	{
		instance_destroy();
	}
}
#endregion