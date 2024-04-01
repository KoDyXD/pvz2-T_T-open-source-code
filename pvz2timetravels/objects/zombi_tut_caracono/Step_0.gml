/// @description acciones que realizara el zombi
#region vida, morir y escudo
if escudo < 0 {hp += escudo; escudo = 0;}
if hp <= 100 and skeleton_skin_get() != "basico/dano" {skeleton_skin_set("basico/dano");}	//cambiar apariencia cuando tenga la mitad de la vida
if escudo > 0	//cambiar apariencia del escudo segun cuanto escudo le quede
{
	if escudo > 100 and escudo <= 240 and skeleton_skin_get() != "cono/2/entero"{skeleton_skin_set("cono/2/entero");}
	if escudo <= 100 and skeleton_skin_get() != "cono/3/entero"{skeleton_skin_set("cono/3/entero");}
}
else if skeleton_skin_get() != "basico/entero" and hp > 100	//quitar escudo por completo
{
	skeleton_skin_set("basico/entero");
}
if hp <= 100 and anim_brazo = true and anim_expl = false	//hacer que se le caiga el brazo
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
if escudo <= 0 and anim_escudo_2 = true	//hacer que se le caiga el escudo
{
	var i = instance_create_layer(x-39,y-261,"npcs",efect_zombi_restos);
	with(i)
	{
		depth = instance_depth_proj(other.y-35);
		x1 = x;
		y1 = y;
		y2 = other.y-80;
		sombra_y = other.y-80;
		sprite_index = other.sprite_index;
		skeleton_skin_set("restos/cono");
	}
	anim_escudo_2 = false;
}
///hacer que el zombi muera si no tiene vida
if hp <= 0
{
	if anim_nada = false {var _mo = instance_create_depth(x,y,0,zombi_tut_morir); _mo.depth = depth;}
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