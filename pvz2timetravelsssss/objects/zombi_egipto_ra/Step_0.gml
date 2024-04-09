/// @description acciones que realizara el zombi
#region vida, morir y escudo
if escudo < 0 {hp += escudo; escudo = 0;}	//cambiar vida si el escudo es negativo
if hp <= 100 and skeleton_skin_get() = "aband/entero" {skeleton_skin_set("aband/dano");}	//cambiar apariencia cuando tenga la mitad de vida
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
//hacer que el zombi muera si no tiene vida
if hp <= 0
{
	for (var i = 1; i < array_length(soles); ++i) {
	    var _sol = instance_create_layer(x-118,y-200,"npcs",sol_curvo);
		_sol.x1 = x-118;
		_sol.y1 = y-200;
		_sol.valor = soles[i];
	}
	if anim_nada = false
	{
		var _mo = instance_create_depth(x,y,0,zombi_egipto_basico_morir);
		with(_mo)
		{
			depth = other.depth;
			sprite_index = spr_zombi_egipto_ra_anims;
			skeleton_animation_set("basico/muerte");
			skeleton_skin_set("aband/muerto");
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
	audio_play_sound(sound_zombi_ra_morir,5,0);
	//desactivar la recoleccion en los soles
	for (var i = 1; i < array_length(global.ra_id); ++i) {
	   if global.ra_id[i] = id
		{
			array_delete(global.ra_id,i,1);
		}
	}
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
#region//recolectar soles
if recol1 = true and skeleton_animation_get() = "basico/caminar" and image_index >= 44 and array_length(soles) < 10 and x < 2450
{
	if instance_exists(sol_debug)
	{
		audio_play_sound(sound_zombi_ra_absorber,5,0);
		skeleton_animation_set("basico/recoger1")
		image_index = 0;
		aceptar_soles = true;
		recolectar = true
		recol1 = false;
		ra_id = true;
		alarm_set(5,4*60);	//alarma para detener de recoger soles
	}
}
if recolectar = true
{
	detener = true;
	if skeleton_animation_get() = "basico/recoger1" and image_index >= 65 {skeleton_animation_set("basico/recoger2"); image_index = 0;}
	if skeleton_animation_get() = "basico/recoger3" and image_index >= 20 {skeleton_animation_set("basico/caminar"); image_index = 0; recolectar = false; detener = false;}
	//esta parte permite al zombi recoger los soles
	global.recolectar = true;	//habilita la recoleccion de soles en los soles
	if ra_id = true
	{
		var _cant = 0;
		for (var i = 0; i < array_length(global.ra_id); i++) {
			if global.ra_id[i] != id
			{
				_cant += 1;
			}
			if array_length(global.ra_id)/_cant == 1
			{
				global.ra_id[i+1] = id;
			}
		}
		ra_id = false;
	}
	if skeleton_animation_get() == "basico/recoger2" and image_index >= 45 and aceptar_soles == false
	{
		//aceptar_soles = false;
		skeleton_animation_set("basico/recoger3");
		for (var i = 1; i < array_length(global.ra_id); ++i) {
		    if global.ra_id[i] = id
			{
				array_delete(global.ra_id,i,1);
			}
		}
		alarm_set(4,irandom_range(100,140));		//recolectar soles despues de x tiempo
	}
	if array_length(soles) > 10 and aceptar_soles = true {alarm_set(5,1);}
}
#endregion