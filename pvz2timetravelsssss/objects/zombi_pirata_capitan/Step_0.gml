/// @description acciones que realizara el zombi
#region vida, morir y escudo
if escudo < 0 {hp += escudo; escudo = 0;}	//cambiar vida si el escudo es negativo
if hp <= 200	//cambiar apariencia cuando tenga la mitad de vida
{
	if loro == true
	{
		if skeleton_skin_get() != "sin loro/dano" {skeleton_skin_set("sin loro/dano");}
	}
	else
	{
		if skeleton_skin_get() != "con loro/dano" {skeleton_skin_set("con loro/dano");}
	}
}
else
{
	if loro == true
	{
		if skeleton_skin_get() != "sin loro/entero" {skeleton_skin_set("sin loro/entero");}
	}
	else
	{
		if skeleton_skin_get() != "con loro/entero" {skeleton_skin_set("con loro/entero");}
	}
}
if hp <= 200 and anim_brazo = true and anim_expl = false
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
	if anim_nada = false
	{
		var _mo = instance_create_depth(x,y,0,zombi_tut_morir);
		with(_mo)
		{
			sprite_index = other.sprite_index;
			skeleton_animation_set("basico/muerte");
			skeleton_skin_set("con loro/muerto");
			depth = other.depth;
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
		if _planta.accion = "normal" or _planta.accion == "seminormal"
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
	if estatico = true and image_speed != 0 {image_speed = 0; alarm_comer = alarm[0]; alarm[0] = -1;}
}
x -= velocidad;
#endregion
#region crear loro
if alarm[4] == -1 and instance_exists(oPlantaVisible) and loro == false and x <= 2500 and estatico == false
{
	var _x = (x div 166);
	var _y = (y div 186);

	if collision_rectangle((_x-1)*166,(_y-1)*186,(_x+2)*166,(_y+2)*186,oPlantaVisible,0,1)
	{
		var _lista = ds_list_create();
		collision_rectangle_list((_x-1)*166,(_y-1)*186,(_x+2)*166,(_y+2)*186,oPlantaVisible,false,true,_lista,false);
		var _cual = ds_list_find_value(_lista,irandom_range(0,ds_list_size(_lista)-1));

		if _cual.accion == "normal"// or _cual.accion == "seminormal"
		{
			loro = true;
			loro_inst = instance_create_layer(x-72.8,y-220.5,"npcs",zombi_pirata_loro);
			loro_inst.padre = id;
			loro_inst.sombra_y = y;
			loro_inst.depth = instance_depth_proj(1500);
			loro_inst.objetivo = _cual
			loro_inst.direccion = "planta";
		}
		ds_list_destroy(_lista);
		alarm_set(4,5*60);
	}
}
#endregion