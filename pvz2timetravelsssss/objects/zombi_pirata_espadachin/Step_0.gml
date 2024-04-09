/// @description acciones que realizara el zombi
#region vida, morir y escudo
if escudo < 0 {hp += escudo; escudo = 0;}	//cambiar vida si el escudo es negativo
if hp <= 100 and skeleton_skin_get() != "normal/dano" {skeleton_skin_set("normal/dano");}	//cambiar apariencia cuando tenga la mitad de vida
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
		skeleton_animation_set("basico/idle");
	}
	anim_brazo = false;
}
//hacer que el zombi muera si no tiene vida
if hp <= 0
{
	if anim_nada = false
	{
		var _mo = instance_create_depth(x,y,0,zombi_pirata_morir);
		with(_mo)
		{
			depth = other.depth;
			sprite_index = other.sprite_index;
			skeleton_skin_set("normal/muerto");
			skeleton_animation_set("basico/muerte");
		}
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
			skeleton_animation_set("basico/idle");
		}
	}
	if anim_expl = true {instance_create_layer(x,y,"npcs",efect_zombi_basico_cenizas)}
	instance_destroy();
}
#endregion
#region detenerse y comer si choca con una planta
if estatico = false and accion = "normal"
{
	if place_meeting(x,y,oPlantaVisible)
	{
		var _planta = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,oPlantaVisible,0,1);
		if _planta.accion = "normal"
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
		else if skeleton_animation_get() = "basico/comer"
		{
			skeleton_animation_set("basico/caminar");
			image_index = irandom_range(0,10);
			alarm_set(0,-1);
			alarm_set(1,irandom_range(500,2000));
			detener = false;
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
#region caminar y columpiar
if detener == false
{
	if skeleton_animation_get() == "basico/caminar" and accion == "normal"
	{
		if image_index <= 15 {velocidad = 0.7346*image_speed;}
		if image_index > 15 {velocidad = 0.3673*image_speed;}
	}
	if accion == "columpiar"
	{
		if image_index >= 212
		{
			accion = "caer";
			skeleton_animation_set("basico/aterrizar");
			image_index = 0;
		}
	}
	if accion == "caer" and skeleton_animation_get() == "basico/aterrizar"
	{
		if image_index >= 29
		{
			accion = "normal";
			skeleton_animation_set("basico/caminar");
			skeleton_skin_set("normal/entero");
			image_index = 0;
			mask_index = spr_zombi_pirata_espadachin_anims;
			x = x-815;
		}
	}
	if accion == "viento"
	{
		if image_speed != 0 {image_speed = 0;}
		velocidad = -39;
	}
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
#region desacerse del zombi
if instance_exists(proj_trebolador) and accion == "columpiar"
{
	accion = "viento";
}
if accion = "viento" and x > camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])
{
	instance_destroy();
}
#endregion