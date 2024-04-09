/// @description Insert description here
//ajustar la skin segun la vida
if hp > 400 and hp <= 800 and skeleton_skin_get() != "barril/dano 1"
{
	skin = "barril/dano 1";
	skeleton_skin_set("barril/dano 1");
}
if hp <= 400 and skeleton_skin_get() != "barril/dano 2"
{
	skin = "barril/dano 2";
	skeleton_skin_set("barril/dano 2");
}

if place_meeting(x,y,oPlantaVisible) and image_speed != 0	//detectar si choca con una planta
{
	if alarm[0] = -1
	{
		instance_create_layer(x-11,y-106,"npcs",proj_barril);
		alarm_set(0,45);
	}
}
if !instance_exists(inst) and image_speed != 0	//detenerse si no existe su zombi
{
	image_speed = 0;
	inst = noone;
}
if hp <= 0	//crear zombiditos al morir
{
		if liberar = true
		{
			
			if y >= (186*5)-10
			{
				var _yy = ((y div 186))*186-10;
				var i = instance_create_layer(x,y,"npcs",proj_zombi_barril_imp);
				i.y2 = _yy;
				i.x1 = x;
				i.y1 = y;
				i.sombra_y = y;
			}
			/*
			var i = instance_create_layer(x,y,"npcs",proj_zombi_barril_imp);
			i.y2 = y;
			i.x1 = x;
			i.y1 = y;
			i.sombra_y = y;
			*/
			if y <= (186*7)-10
			{
				var _yy = ((y div 186)+2)*186-10;
				var i = instance_create_layer(x,y,"npcs",proj_zombi_barril_imp);
				i.y2 = _yy;
				i.x1 = x;
				i.y1 = y;
				i.sombra_y = y;
			}
		}
		var _mo = instance_create_depth(x,y,0,zombi_pirata_morir);
		with(_mo)
		{
			depth = other.depth;
			sprite_index = other.sprite_index;
			skeleton_skin_set("barril/muerto");
			skeleton_animation_set("barril/muerte");
		}
		instance_destroy();
}
#region comportamiento exclusivo del almanaque
if instance_exists(menu_almanaque_hud_zombis)
{
	if !instance_exists(inst)
	{
		instance_destroy();
	}
	else
	{
		if depth != inst.depth+1	//ajustar depth
		{
			depth = inst.depth+1;
		}
		if image_xscale != 1.4	//ajustar escala
		{
			image_yscale = 1.4;
			image_xscale = 1.4;
		}
	}
}
#endregion