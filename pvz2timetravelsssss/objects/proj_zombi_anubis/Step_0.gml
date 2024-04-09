/// @description mover proyectil
if mask_index != spr_vacio
{
	if recorrer < recorrido
	{
		recorrer++;
	}
	else
	{
		recorrer = recorrido;
	}
	x = lerp(x1,x2,recorrer/recorrido);
	z = scr_proj_arco(0,altura,0,recorrer/recorrido,0.8);
	y = lerp(y1,y2,recorrer/recorrido)-z;
}
if recorrer >= recorrido	//destruir el proyectil una vez llegue al punto destino
{
	if !collision_rectangle(x-5,y-10,x+5,y-5,casillas_no_pasarela,0,1)
	{
		if mask_index != spr_vacio
		{
			if !collision_rectangle(x-5,y-10,x+5,y-5,oPlantaGeneral,0,1) and !collision_rectangle(x-5,y-10,x+5,y-5,tumba_egipto,0,1)
			{
				if instance_exists(inst) {inst.huesos += 1;}
				if x < camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])
				{
					var i = instance_create_layer((x2-83)+68,(y2-124)+143,"npcs",tumba_egipto);
					i.alarm[1] = 1;
				}
			}
			skeleton_skin_set("basico/niebla");
			skeleton_animation_set("basico/niebla");
			image_index = 0;
			mask_index = spr_vacio;
		}
	}
	else
	{
		instance_create_depth(x,(y div 186)*186+166,depth,efect_caer_agua);
		instance_destroy();
	}
}

if mask_index == spr_vacio and image_index >= 44
{
	instance_destroy();
}