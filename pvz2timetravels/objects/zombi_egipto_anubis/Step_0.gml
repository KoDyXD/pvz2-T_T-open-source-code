/// @description acciones que realizara el zombi
#region vida, morir y escudo
if escudo < 0 {hp += escudo; escudo = 0;}	//cambiar vida si el escudo es negativo
if hp <= 100 and skeleton_skin_get() = "basico/entero" {skeleton_skin_set("basico/dano");}	//cambiar apariencia cuando tenga la mitad de vida
if hp <= 100 and anim_brazo = true and anim_expl = false
{
	var i = instance_create_layer(x-24,y-66,"npcs",efect_zombi_restos);
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
	if anim_nada = false {var _mo = instance_create_depth(x,y,0,zombi_anubis_morir); _mo.depth = depth;}
	if anim_expl = false
	{
		var i = instance_create_layer(x-50,y-190,"npcs",efect_zombi_restos);
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
	if anim_expl = true {instance_create_layer(x,y,"npcs",efect_zombi_basico_cenizas)}
	instance_destroy();
}
#endregion
#region detenerse y comer si choca con una planta
if estatico = false
{
	if place_meeting(x,y,oPlantaVisible)
	{
		var _planta = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,oPlantaVisible,0,1);
		if _planta.accion == "normal" or _planta.accion == "seminormal"
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
if skeleton_animation_get() = "basico/caminar" and detener = false
{
	if image_index <= 15 {velocidad = 0.7346*image_speed;}
	if image_index > 15 {velocidad = 0.3673*image_speed;}
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
#region tumbas
if estatico = false
{
	if skeleton_animation_get() = "basico/hueso" //esta parte regresa el zombi a la normalidad
	{
		if image_index >= 59
		{
			hue = noone;
			skeleton_animation_set("basico/caminar");
			image_index = 0;
			producir = false;
			detener = false;
		}
	}

	if producir1 = true and skeleton_animation_get() = "basico/caminar" and image_index >= 44 and huesos < 5 and x < 2475
	{
		audio_play_sound(sound_zombi_anunis_crear,5,0);
		skeleton_animation_set("basico/hueso");
		image_index = 0;
		producir = true
		alarm_set(4,irandom_range(400,600));		//crear otra tumba
		producir1 = false;
	}
	if producir = true
	{
		detener = true;
		if image_index >= 29 and image_index <= 30 and hue = noone and huesos < 5
		{
			audio_play_sound(sound_zombi_anunis_hueso,5,0);
			hue = instance_create_layer(x-90,y-134.75,"npcs",proj_zombi_anubis);
			var _x = (x div 166)+irandom_range(-2,2);
			if _x < 6 {_x = 6;}
			if _x > 14 {_x = 14;}
			var _y = (y div 186)+irandom_range(-1,1);
			if _y < 3 {_y = 3;}
			if _y > 7 {_y = 7;}
			hue.inst = id;
			hue.sombra_y = y-(y-134.75);
			hue.x1 = x-90;
			hue.y1 = y-134.75;
			hue.x2 = _x*166+83;
			hue.y2 = _y*186+124;
			hue.depth = instance_depth_proj((_y*186)+124);
		}
	}
}
#endregion