/// @description acciones que realizara el zombi
#region vida, morir y escudo
if escudo < 0 {hp += escudo; escudo = 0;}
if hp <= 200 and escudo <= 0
{
	if sprite_index != spr_zombi_egipto_basico_anims 
	{
		sprite_index = spr_zombi_egipto_basico_anims;
		if place_meeting(x,y,oPlantaVisible)
		{
			var _planta = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,oPlantaVisible,0,1);
			if _planta.accion = "normal"
			{
				skeleton_animation_set("basico/comer");
			}
			else
			{
				skeleton_animation_set("basico/caminar");
			}
		}
		else
		{
			skeleton_animation_set("basico/caminar");
		}
		image_speed = image_speed*1.3;
		vel = vel*1.3;
	}
	if hp > 100
	{
		if skeleton_skin_get() != "basico/entero" {skeleton_skin_set("basico/entero");}
	}
	else if skeleton_skin_get() != "basico/dano"
	{
		skeleton_skin_set("basico/dano");
	}
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
		sprite_index = spr_zombi_egipto_basico_anims;
		skeleton_skin_set("restos/brazo");
	}
	anim_brazo = false;
}
///hacer que el zombi muera si no tiene vida
if hp <= 0
{
	if anim_nada = false
	{
		var _mo = instance_create_depth(x,y,0,zombi_egipto_basico_morir);
		_mo.depth = depth;
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
			sprite_index = spr_zombi_egipto_basico_anims;
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
			if quieto = false
			{
				if escudo > 0 {skeleton_animation_set("comer/1");}else{skeleton_animation_set("basico/comer");}
				image_index = 0;
				alarm_set(0,45/image_speed);
				alarm_set(1,-1);
				detener = true;
				quieto = true;
				quieto2 = true;
			}
			if alarm[0] = -1 {instance_create_layer(x-11,y-106,"npcs",proj_zombixd); alarm_set(0,45/image_speed);}
		}
		if _planta.accion == "nodetectar"
		{
			if skeleton_animation_get() = "basico/comer" or skeleton_animation_get() = "comer/1"
			{
				if escudo > 0 {skeleton_animation_set(caliza);}else{skeleton_animation_set("basico/caminar");}
				image_index = 0;
				alarm_set(0,-1);
				alarm_set(1,irandom_range(500,2000));
				detener = false;
				quieto = false;
			}
		}
	}
	else if skeleton_animation_get() == "basico/comer" or skeleton_animation_get() == "comer/1"
	{
		if escudo > 0 {skeleton_animation_set(caliza);}else{skeleton_animation_set("basico/caminar");}
		image_index = 0;
		alarm_set(0,-1);
		alarm_set(1,irandom_range(500,2000));
		detener = false;
		quieto = false;
	}
}
#endregion
#region caminar
if skeleton_animation_get() = caliza or skeleton_animation_get() = "basico/caminar" and detener = false
{
	if image_index <= 15 {velocidad = 0.7346*image_speed;}
	if image_index > 15 {velocidad = 0.3673*image_speed;}
}
#endregion
#region velocidad del zombi
if quieto = false
{
	if detener = true
	{
		velocidad = 0;
	}
	x -= velocidad;
}
if estatico = true and image_speed != 0 {image_speed = 0;}
#endregion
#region weas relacionadas a los camellos
if escudo > 0	//estado del escudo
{
	if escudo >= 240
	{
		if caliza = "caminar/1" and skeleton_skin_get() != "cabeza/1"
		{
			skeleton_skin_set("cabeza/1");
		}
		if caliza = "caminar/2" and skeleton_skin_get() != "cuerpo/1"
		{
			skeleton_skin_set("cuerpo/1");
		}
		if caliza = "caminar/3" and skeleton_skin_get() != "cola/1"
		{
			skeleton_skin_set("cola/1");
		}
	}
	if escudo >= 120 and escudo < 240
	{
		if caliza = "caminar/1" and skeleton_skin_get() != "cabeza/2"
		{
			skeleton_skin_set("cabeza/2");
		}
		if caliza = "caminar/2" and skeleton_skin_get() != "cuerpo/2"
		{
			skeleton_skin_set("cuerpo/2");
		}
		if caliza = "caminar/3" and skeleton_skin_get() != "cola/2"
		{
			skeleton_skin_set("cola/2");
		}
	}
	if escudo < 120
	{
		if caliza = "caminar/1" and skeleton_skin_get() != "cabeza/3"
		{
			skeleton_skin_set("cabeza/3");
		}
		if caliza = "caminar/2" and skeleton_skin_get() != "cuerpo/3"
		{
			skeleton_skin_set("cuerpo/3");
		}
		if caliza = "caminar/3" and skeleton_skin_get() != "cola/3"
		{
			skeleton_skin_set("cola/3");
		}
	}
}
if congelar = true and escudo > 0	//congelar camellos
{
	if congelar2 = true
	{
		if instance_exists(camellos[0]) {camellos[0].congelar = true;}
		if instance_exists(camellos[1]) {camellos[1].congelar = true;}
		if instance_exists(camellos[2]) {camellos[2].congelar = true;}
	}
	if image_blend != $FFB93C	//relantizar
	{
		image_speed = image_speed/1.5;
		vel = vel/1.5;
	}
	image_blend = $FFB93C; //iluminar zombi
	alarm_set(7,10*60);
	congelar = false;
	congelar2 = false;
}
if quieto2 = true and escudo > 0	//detener y mover camellos
{
	if quieto = true
	{
		detener = true;
		for (var i = 0; i < array_length(camellos); ++i) {
			if instance_exists(camellos[i])
			{
				var _camel_cual =  string(i+1);
				with(camellos[i])
				{
					detener = true; if skeleton_animation_get() = "caminar/"+_camel_cual skeleton_animation_set("tranquilo/"+_camel_cual);
				}
			}
		}
	}
	else
	{
		detener = false;
		for (var i = 0; i < array_length(camellos); ++i) {
			if instance_exists(camellos[i])
			{
				var _camel_cual =  string(i+1);
				with(camellos[i])
				{
					detener = false; if skeleton_animation_get() = "tranquilo/"+_camel_cual skeleton_animation_set("caminar/"+_camel_cual);
				}
			}
		}
		quieto = false; quieto2 = false;
	}
}
if camel == true and escudo <= 0	//desactivar el camello si no tiene escudo
{
	if camellos[0] = id
	{
		if instance_exists(camellos[1]) {camellos[1].camellos[0] = noone;} if instance_exists(camellos[2]) {camellos[2].camellos[0] = noone;}
	}
	if camellos[1] = id
	{
		if instance_exists(camellos[0]) {camellos[0].camellos[1] = noone;} if instance_exists(camellos[2]) {camellos[2].camellos[1] = noone;}
	}
	if camellos[2] = id
	{
		if instance_exists(camellos[1]) {camellos[1].camellos[2] = noone;} if instance_exists(camellos[0]) {camellos[0].camellos[2] = noone;}
	}
	if instance_exists(camellos[0])
	{
		with(camellos[0]) {if skeleton_animation_get() == "tranquilo/1" {detener = false; skeleton_animation_set("caminar/1");}}
	}
	if instance_exists(camellos[1])
	{
		with(camellos[1]) {if skeleton_animation_get() = "tranquilo/2" {detener = false; skeleton_animation_set("caminar/2");}}
	}
	if instance_exists(camellos[2])
	{
		with(camellos[2]) {if skeleton_animation_get() = "tranquilo/3" {detener = false; skeleton_animation_set("caminar/3");}}
	}
	quieto = false;
	camel = false;
	if estatico = false {detener = false;}
	instance_create_layer(x,y,"npcs",zombi_caliza_morir);
}
#endregion