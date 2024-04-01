/// @description acciones que realizara el zombi
#region vida, morir y escudo
if escudo < 0 {hp += escudo; escudo = 0;}	//cambiar vida si el escudo es negativo
if escudo <= 0	//cambiar apariencia segun su vida
{
	if hp > 100 and skeleton_skin_get() != "normal/entero"	//si tiene mas de la mitad de vida
	{
		skeleton_skin_set("normal/entero");
		if !place_meeting(x,y,oPlantaVisible)
		{
			skeleton_animation_set("basico/caminar");
		}
		else
		{
			skeleton_animation_set("basico/comer");
		}
	}
	if hp <= 100 and skeleton_skin_get() != "normal/brazo"	//si tiene menos de la mitad de vida
	{
		skeleton_skin_set("normal/brazo");
		if !place_meeting(x,y,oPlantaVisible)
		{
			if skeleton_animation_get() != "basico/caminar" {skeleton_animation_set("basico/caminar");}
		}
		else
		{
			if skeleton_animation_get() != "basico/comer" {skeleton_animation_set("basico/comer");}
		}
	}
}
else
{
	if escudo <= 400 and skeleton_skin_get() != "ataud/dano 2" {skeleton_skin_set("ataud/dano 2");}	//escudo muy danado
	if escudo > 400 and escudo <= 800 and skeleton_skin_get() != "ataud/dano 1" {skeleton_skin_set("ataud/dano 1");}	//escudo a la mitad
	if escudo > 800 and skeleton_skin_get() != "ataud/dano 0" {skeleton_skin_set("ataud/dano 0");}	//escudo completo
}
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
if escudo <= 0 and anim_escudo_2 = true
{
	var i = instance_create_layer(x,y,"npcs",zombi_faraon_caja_morir);
	anim_escudo_2 = false;
}
///hacer que el zombi muera si no tiene vida
if hp <= 0
{
	if anim_nada = false
	{
		instance_create_depth(x,y,depth,zombi_faraon_morir);
	}
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
	if anim_expl = true {instance_create_layer(x,y,"npcs",efect_zombi_basico_cenizas);}
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
			if skeleton_animation_get() = "basico/caminar" or skeleton_animation_get() = "escudo/caminar"
			{
				if escudo <= 0 {skeleton_animation_set("basico/comer");}else{skeleton_animation_set("escudo/comer");}
				image_index = 0;
				alarm_set(0,45/image_speed);
				alarm_set(1,-1);
				detener = true;
			}
			if alarm[0] = -1 {instance_create_layer(x-16,y-108,"npcs",proj_zombixd); alarm_set(0,45/image_speed);}
		}
		if _planta.accion == "nodetectar"
		{
			if skeleton_animation_get() = "basico/comer" or skeleton_animation_get() = "escudo/comer"
			{
				if escudo <= 0 {skeleton_animation_set("basico/caminar");}else{skeleton_animation_set("escudo/caminar");}
				image_index = irandom_range(0,10);
				alarm_set(0,-1);
				alarm_set(1,irandom_range(500,2000));
				detener = false;
			}
		}
	}
	else if skeleton_animation_get() = "basico/comer" or skeleton_animation_get() = "escudo/comer"
	{
		if escudo <= 0 {skeleton_animation_set("basico/caminar");}else{skeleton_animation_set("escudo/caminar");}
		image_index = irandom_range(0,10);
		alarm_set(0,-1);
		alarm_set(1,irandom_range(500,2000));
		detener = false;
	}
}
#endregion
#region caminar
if detener = false
{
	if skeleton_animation_get() = "escudo/caminar" or skeleton_animation_get() = "basico/caminar"
	{
		if image_index <= 15 {velocidad = 0.7346*image_speed;}
		if image_index > 15 {velocidad = 0.3673*image_speed;}
	}
}
#endregion
#region velocidad del zombi
if escudo <= 0 and c_vel = true
{
	image_speed = image_speed*1.8;
	vel = vel*1.8;
	c_vel = false;
}
if detener = true
{
	velocidad = 0;
	if estatico = true and image_speed != 0 {image_speed = 0;}
}
x -= velocidad;
#endregion